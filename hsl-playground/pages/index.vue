<template>
  <div class="container">
    <div class="content">
      <header>
        <div>
          <Logo />
        </div>
      </header>

      <div class="form">
        <div>
          <AddressForm />
        </div>
      </div>

      <footer>
        <a href="https://classic.hsl.fi/en/opendata">HSL Open Data</a>
      </footer>
    </div>
  </div>
</template>

<script>

export default {}
</script>

<style>

.container {
  margin: 10px;
  text-align: center;
}

.content {
  height: 80%;
  margin-top: 5%;
}

header {
  width: 60%;
  height: 50%;
  margin-bottom: 5px;
  margin-left: 20%;
}

.form {
  width: 80%;
  margin-bottom: 5px;
  margin-left: 10%;
}

footer {
  width: 80%;
  margin-bottom: 5px;
  margin-left: 10%;
}

</style>
