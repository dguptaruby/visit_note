<template>
  <div>
    <v-container fluid>
      <v-card>
        <v-list dense>
          <v-subheader>NOTES</v-subheader>
          <v-list-item
            v-for="(note, i) in notes"
            :key="i"
          >
            <v-list-item-content>
              <v-list-item-title>{{ note.content }} - by {{note.therapist_id}}

                <v-divider inset></v-divider>
              </v-list-item-title>
            </v-list-item-content>

          </v-list-item>
        </v-list>
      </v-card>
    </v-container>

  </div>
</template>

<script>
  export default {
    name: 'notesIndex',
    props: {
      notes: {
        type: Array,
        default: () => []
      }
    },
    mounted() {
    }
  }
</script>
