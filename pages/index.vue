<template>
	<div>
    <h2>Users</h2>
		<ul>
		 	<li v-for="(user, index) in users" :key="index">
 		 		<a :href="'/' + user.id" target="_blank" rel="noopener noreferrer">{{ user.name }}</a>
			</li>
		</ul>

    <h2>Articles</h2>
		<ul>
		 	<li v-for="(article, index) in articles" :key="index">
        <strong>{{article.title}}</strong>
        {{article.contents}}
			</li>
		</ul>
  </div>

</template>

<script>
	export default {
		async asyncData({ $axios }) {      
      const users_url = 'http://localhost:8080/users'
      const users_response = await $axios.$get(users_url);
      const articles_url = 'http://localhost:8080/articles'
      const articles_response = await $axios.$get(articles_url);

      return {
        users: users_response,
        articles: articles_response
			};
    },
	};
</script>
