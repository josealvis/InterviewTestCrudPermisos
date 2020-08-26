<template>
  <div class="container-fluid">
    <div class="container">
      <h1 class="display-4">Time Off Request</h1>
    </div>
    <div class="row">
      <div class="col-sm"></div>
      <div class="col-sm"></div>
      <div class="col-sm">
        <button class="btn btn-primary" type="submit" v-on:click="addRequest" >Add Time off request</button>
      </div>
    </div>
    <table class="table">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Employee Name</th>
          <th scope="col">Employee LastName</th>
          <th scope="col">Type of Time Off</th>
          <th scope="col">Request Date</th>
          <th scope="col">Action</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(timeOff, index) in timeOffRequestList" :key="timeOff.Id">
          <th scope="row">{{index+1}}</th>
          <td>{{timeOff.employeeName}}</td>
          <td>{{timeOff.employeeLastname}}</td>
          <td>{{timeOff.type.name}}</td>
          <td>{{ new Date(timeOff.requestDate) | dateFormat('YYYY/MM/DD')}}</td>
          <td>
            <b-button pill variant="outline-secondary" v-on:click="editRequest(timeOff.id)">Edit</b-button>
            <b-button pill variant="outline-danger" v-on:click="removeRequest(timeOff.id)">Remove</b-button>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
import axios from "axios";
export default {
  name: "Home",
  data() {
    return {
      timeOffRequestList: [],
      errors: [],
    };
  },
  methods: {
    removeRequest: function (id) {
      console.log(id);
      axios
        .get(`https://localhost:44399/TimeOffReques/Delete/` + id)
        .then((response) => {
          console.log(response);
          this.loadRequest();
        })
        .catch((e) => {
          this.errors.push(e);
        });
    },
    editRequest: function (id) {
         this.$router.push({ path: 'edit'+id })
    },
    addRequest: function () {
         this.$router.push({ path: 'edit' })
    },
    loadRequest: function () {
      axios
        .get(`https://localhost:44399/test`)
        .then((response) => {
          // JSON responses are automatically parsed.
          this.timeOffRequestList = response.data;
        })
        .catch((e) => {
          this.errors.push(e);
        });
    },
  },

  // Fetches posts when the component is created.
  created() {
      this.loadRequest();
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
