<template>
  <div class="container-fluid">
    <h1 class="display-4">Time Off Request</h1>

    <div class="row">
      <div class="col-10"></div>
      <div class="col-2">
        <button class="btn btn-primary" type="submit" v-on:click="addRequest">Add Time off request</button>
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
        <tr v-for="(timeOff) in paginatedList" :key="timeOff.Id">
          <th scope="row">{{timeOff.id}}</th>
          <td>{{timeOff.employeeName}}</td>
          <td>{{timeOff.employeeLastname}}</td>
          <td>{{timeOff.type.name}}</td>
          <td>{{ new Date(timeOff.requestDate) | dateFormat('YYYY/MM/DD')}}</td>
          <td>
            <b-button pill variant="outline-secondary" v-on:click="editRequest(timeOff.id)">Edit</b-button>
            <b-button pill variant="outline-danger" v-on:click="showModal(timeOff.id)">Remove</b-button>
          </td>
        </tr>
      </tbody>
    </table>
    <nav aria-label="Page navigation example">
      <ul class="pagination justify-content-center">
        <li class="page-item" v-bind:class="{ disabled: page === 0 }">
          <a class="page-link" href="#" tabindex="-1" aria-disabled="true"  v-on:click="paginationHandler(page-1)" >Previous</a>
        </li>

        <li class="page-item">
          <a class="page-link" href="#">{{page+1}}</a>
        </li>

        <li class="page-item" v-bind:class="{ disabled: (page* 5)+5 >= timeOffRequestList.length }">
          <a class="page-link" href="#"    v-on:click="paginationHandler(page+1)" >Next</a>
        </li>
      </ul>
    </nav>
    <b-modal
      id="modal-prevent-closing"
      ref="delete-alert"
      title="Deleting Request"
      @ok="handleOk"
    >Are you sure?</b-modal>
  </div>
</template>

<script>
import axios from "axios";
export default {
  name: "Home",
  data() {
    return {
      timeOffRequestList: [],
      paginatedList: [],
      page: 0,
      selectedId: null,
      errors: [],
    };
  },
  methods: {
    showModal(id) {
      this.selectedId = id;
      this.$refs["delete-alert"].show();
    },
    handleOk: function () {
      this.removeRequest(this.selectedId);
    },
    removeRequest: function (id) {
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
      this.$router.push({ path: "edit" + id });
    },
    addRequest: function () {
      this.$router.push({ path: "edit" });
    },
    loadRequest: function () {
      axios
        .get(`https://localhost:44399/test`)
        .then((response) => {
          // JSON responses are automatically parsed.
          this.timeOffRequestList = response.data;
          this.paginationHandler(0);
        })
        .catch((e) => {
          this.errors.push(e);
        });
    },
    paginationHandler: function (page) {
      this.page = page;
      this.paginatedList = [...this.timeOffRequestList].slice(page* 5, (page* 5)+5);
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
