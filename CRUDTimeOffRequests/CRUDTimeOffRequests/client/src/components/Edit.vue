<template>
  <div class="container-fluid">
    <h1 class="display-4">Fluid jumbotron</h1>
    <form @submit="checkForm">
      <div class="alert alert-danger" role="alert" v-if="errors.length">
        <b>Please correct the following error(s):</b>
        <ul>
          <li v-for="(error, index) in errors" :key="index">{{ error }}</li>
        </ul>
      </div>

      <div class="form-group">
        <label for="name">Employee Name</label>
        <input
          id="employeeFirstName"
          v-model="firstName"
          type="text"
          name="employeeFirstName"
          class="form-control"
        />
        <small id="name" class="form-text text-muted">We'll never share your email with anyone else.</small>
      </div>

      <div class="form-group">
        <label for="name">Employee Lastname</label>
        <input
          id="employeeFirstName"
          v-model="lastName"
          type="text"
          name="employeeLastName"
          class="form-control"
        />
        <small id="name" class="form-text text-muted">We'll never share your email with anyone else.</small>
      </div>
      <div class="input-group mb-3">
        <div class="input-group-prepend">
          <label class="input-group-text" for="inputGroupSelect01">Time Off Type</label>
        </div>
        <select class="custom-select" id="inputGroupSelect01" v-model="selectedType">
          <option disabled value>Choose...</option>
          <option v-for="(type, index) in timeOffTypes" :key="index" :value="type.id">
            <div v-on:click="console.log(type.id)">{{type.name}}</div>
          </option>
        </select>
      </div>

      <div>
        <label for="example-datepicker">Choose a date</label>
        <b-form-datepicker id="example-datepicker" v-model="requestDate" class="mb-2"></b-form-datepicker>
        <p>Value: '{{ requestDate }}'</p>
      </div>

      <div class="form-group form-check">
        <input type="checkbox" class="form-check-input" id="exampleCheck1" />
        <label class="form-check-label" for="exampleCheck1">Check me out</label>
      </div>
      <button type="button" class="btn btn-primary" v-on:click="checkForm">Submit</button>
    </form>
    {{selectedType}}
  </div>
</template>

<script>
import axios from "axios";
export default {
  name: "Home",
  data() {
    return {
      timeOffTypes: [],
      errors: [],
      firstName: null,
      lastName: null,
      age: null,
      movie: null,
      selectedType: null,
      requestDate: null,
    };
  },

  methods: {
    checkForm: function (e) {
      if (
        this.firstName &&
        this.lastName &&
        this.selectedType &&
        this.requestDate
      ) {
        this.saveChanges();
      } else {
        this.errors = [];

        if (!this.firstName) {
          this.errors.push("Employee name required.");
        }
        if (!this.lastName) {
          this.errors.push("Employee lastname required.");
        }
        if (!this.selectedType) {
          this.errors.push("A time off type has to be selected.");
        }
        if (!this.requestDate) {
          this.errors.push("Request date required.");
        }

        e.preventDefault();
      }
    },
    saveChanges: function () {
      console.log("ok");

      axios({
        method: "post",
        url: "https://localhost:44399/TimeOffReques/Post/",
        data: {
          "Id": 0,
          "EmployeeName": this.firstName,
          "EmployeeLastname": this.lastName,
          "Type": { id: this.selectedType },
          "RequestDate": this.requestDate,
        },
        headers: {  'Content-Type': 'application/json'},
      })
        .then(function (response) {
          //handle success
          console.log(response);
        })
        .catch(function (response) {
          //handle error
          console.log(response);
        });
    },
  },

  // Fetches posts when the component is created.
  created() {

console.log(this.$route.params);

    axios
      .get(`https://localhost:44399/TimeOffType/GetAll/`)
      .then((response) => {
        this.timeOffTypes = response.data;
      })
      .catch((e) => {
        this.errors.push(e);
      });
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
