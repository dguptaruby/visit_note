<template>
  <div>
    <flash-message class="myCustomClass"></flash-message>
    <v-container fluid>
      <h3>id: {{note.id}}</h3>
      <h3>content: {{note.content}}</h3>
    </v-container>

  </div>
</template>

<script>
  export default {
    name: 'showNote',
    props: {
      note: {
        type: Object
      }
    },
    mounted() {
    }
  }
</script>
