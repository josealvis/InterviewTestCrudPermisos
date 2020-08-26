<template>
  <div class="container-fluid">
    <div class="container">
      <h1 class="display-4">Fluid jumbotron</h1>
      <p
        class="lead"
      >This is a modified jumbotron that occupies the entire horizontal space of its parent.</p>
    </div>
    <div class="row">
    <div class="col-sm">
      One of three columns
    </div>
    <div class="col-sm">
      One of three columns
    </div>
    <div class="col-sm">
     <button class="btn btn-primary" type="submit">Add Time off request</button>
    </div>
  </div>
    <table  class="table">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Employee Name</th>
          <th scope="col">Employee LastName</th>
          <th scope="col">Type of Time Off</th>
          <th scope="col">Start Date</th>
          <th scope="col">End Date</th>
          <th scope="col">Action</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(timeOff, index) in timeOffRequestList" :key="timeOff.Id" >
          <th scope="row">{{index+1}}</th>
          <td>{{timeOff.employeeName}}</td>
          <td>{{timeOff.employeeLastname}}</td>
          <td>{{timeOff.type.name}}</td>
          <td>{{ new Date(timeOff.requestDate) | dateFormat('YYYY/MM/DD')}}</td>
          <td>{{ new Date(timeOff.requestDate) | dateFormat('YYYY/MM/DD')}}</td>

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

  // Fetches posts when the component is created.
  created() {
    axios
      .get(`https://localhost:44399/test`)
      .then((response) => {
        // JSON responses are automatically parsed.
        console.log(response.data);
        this.timeOffRequestList = response.data;
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
