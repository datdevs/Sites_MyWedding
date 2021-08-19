const routes = [
  {
    path: '',
    name: 'Invitation',
    component: () => import('../vue/views/invitations.vue'),
    children: [
      {
        path: '/:name',
        name: 'Invitee',
        component: () => import('../vue/views/invitation.vue'),
      },
    ],
  },
]

export default routes
