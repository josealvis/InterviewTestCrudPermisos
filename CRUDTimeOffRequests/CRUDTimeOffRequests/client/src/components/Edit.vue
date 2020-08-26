<template>
  <div class="container">
    <h1 class="display-4">{{requestId == 0 ? "Add new time off": "Update the current time off" }}</h1>
    <form @submit="checkForm">
      <div class="alert alert-danger" role="alert" v-if="errors.length">
        <b>Please correct the following error(s):</b>
        <ul>
          <li v-for="(error, index) in errors" :key="index">{{ error }}</li>
        </ul>
      </div>

      <div class="form-group">
        <label for="name" >Employee Name</label>
        <input
          id="employeeFirstName"
          v-model="firstName"
          type="text"
          name="employeeFirstName"
          class="form-control"
        />

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
      </div>
      <button type="button" class="btn btn-primary" v-on:click="checkForm">{{requestId == 0 ? "Save": "Update"}}</button>
      <button type="button" class="btn btn-info" v-on:click="goBack">Go back</button>
        
        <b-modal
      id="modal-prevent-closing"
      ref="apply-alert"
      title="Warning"
      @ok="handleOk"
    >By Clicking Ok changes will be applyed.</b-modal>
    </form>
  </div>
</template>

<script>
import axios from "axios";


export default {
  name: "Home",
  data() {
    return {
      requestId : 0,
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
    goBack: function(){
      this.$router.go(-1);
    },
     showModal() {
        this.$refs['apply-alert'].show();
      },
      handleOk: function(){
          this.saveChanges();
      },
    checkForm: function (e) {
      if (
        this.firstName &&
        this.lastName &&
        this.selectedType &&
        this.requestDate
      ) {
        this.errors = [];
        this.showModal();
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
          Id: this.requestId,
          EmployeeName: this.firstName,
          EmployeeLastname: this.lastName,
          Type: { id: this.selectedType },
          RequestDate: this.requestDate,
        },
        headers: { "Content-Type": "application/json" },
      })
        .then(function (response) {
          //handle success
          console.log(response);
          this.goBack();
        })
        .catch(function (response) {
          //handle error
          console.log(response);
        });
    },
  },

  // Fetches posts when the component is created.
  created() {
    console.log(this.$route.params.id);

        axios
        .get(`https://localhost:44399/TimeOffType/GetAll/`)
        .then((response) => {
          this.timeOffTypes = response.data;
        })
        .catch((e) => {
          this.errors.push(e);
        });

    if (this.$route.params.id !== undefined) {
      axios
        .get(`https://localhost:44399/TimeOffReques/GetbyId/`+this.$route.params.id)
        .then((response) => {
          let request = response.data;
          this.requestId = request.id,
          this.firstName = request.employeeName;
          this.lastName =request.employeeLastname;
          this.selectedType  = request.type.id;
          this.requestDate = request.requestDate;

        })
        .catch((e) => {
          this.errors.push(e);
        });
    } 
    
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
