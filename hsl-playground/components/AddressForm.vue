<template>
  <div>
    <div class="address-form">
      <form @submit.prevent="fetchCoords">
        <label>
          Address:
          <input v-model="address" placeholder="eg. kamppi" type="address" @:keydown.enter.prevent=""></input>
        </label>
        <button v-if="address" type="submit">
          Submit
        </button>
        <button v-else type="button">
          Submit
        </button>
      </form>
    </div>

    <div v-if="coordinates" class="coordinate-results">
      <p v-for="(coordinate_feature, index) in coordinates.features" :key="index">
        Coordinates found: {{ coordinate_feature.geometry.coordinates[1] }}, {{ coordinate_feature.geometry.coordinates[0] }}
      </p>
    </div>
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
      if (this.address !== '') {
        try {
          const coordinates = await this.$axios.$get('https://api.digitransit.fi/geocoding/v1/search?text=' + this.address + '&size=1')
          this.coordinates = coordinates
          // eslint-disable-next-line no-console
          console.log('Fetched coordinates', JSON.parse(JSON.stringify(coordinates.features[0].geometry.coordinates)))
        } catch (error) {
          // eslint-disable-next-line no-console
          console.error(error)
        }
      } else {
        // eslint-disable-next-line no-console
        console.log('Address is empty.')
      }
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
