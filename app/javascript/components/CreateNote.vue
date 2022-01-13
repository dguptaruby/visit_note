<template>
  <div>
    <flash-message></flash-message>
    <v-container fluid>
      <v-row>
        <v-col cols="12" sm="6">
          <v-label>Enter you Signature</v-label>
          <v-text-field v-model="signature" required></v-text-field>
          <v-label>Write Note</v-label>
          <v-textarea class="" v-model="content" required></v-textarea>
          
          <v-btn 
            @click="createNote"
          >
            Save
          </v-btn>
        </v-col>
      </v-row>
    </v-container>
  </div>
</template>

<script>
  import axios from "axios";

  export default {
    name: 'createNote',
    props: {
      content: {
        type: String,
        default: ''
      },
      signature: {
        type: String,
        default: ''
      }
    },

    methods: {
      createNote() {
        axios.post('/notes/', {
          note: { content: this.content }, signature: this.signature
        }).then(response => {
          this.$emit('response');
          this.flash('Note created successfully', 'success');
          window.location = `/notes/${response.data.id}`
        }).catch(error => {
          this.flash('Error Occurred!!', 'error');
          console.log('error', error)
        });
      }
    }
  }
</script>
