@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()

  <React.Suspense fallback={<Spinner />}>
    {switch url.path {
    //  | list{"user", id} => <User id />
    | list{} => <HomeRoute />
    | list{"forums", slug} => <ForumRoute slug />
    | list{"forums", _, topic} => <TopicRoute topic />
    //| list{"login"} => <ForumRoute slug />
    | _ => <h1> {"Not found"->React.string} </h1>
    }}
  </React.Suspense>
}
