<template>
  <div>
    <div class="address-form">
      <form @submit.prevent="fetchCoords">
        <label>
          Address:
          <input v-model="address" placeholder="eg. kamppi" type="address"></input>
        </label>
        <button type="submit">
          Submit
        </button>
      </form>
    </div>

    <div v-if="coordinates" class="coordinate-results">
      <p v-for="coordinate_feature in coordinates.features" :key="coordinate_feature">
        Coordinates for {{ address }}: {{ coordinate_feature.geometry.coordinates[1] }}, {{ coordinate_feature.geometry.coordinates[0] }}
      </p>
    </div>

    <!-- <div>
      <p>
        {{ address }}
      </p>
    </div> -->
  </div>
</template>

<script>

export default {
  data () {
    return {
      address: '',
      coordinates: []
    }
  },

  methods: {
    async fetchCoords () {
      const coordinates = await this.$axios.$get('https://api.digitransit.fi/geocoding/v1/search?text=' + this.address + '&size=1')
      this.coordinates = coordinates
    }
  }
}

</script>

<style>

.coordinate-results {
  margin-top: 10px;
  margin-bottom: 10px;
}

</style>
