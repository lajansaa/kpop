class AwardBox extends React.Component {
  render() {
    return (
      <div className="box">
        <h1 className="box-header">Awards:</h1>
        <SearchBox award_list={this.props.award_list}/>
      </div>
    );
  }
}

class SearchBox extends React.Component {
  constructor() {
    super()
    this.state = {
      searchString: ''
    }
    this.handleSearch = this.handleSearch.bind(this)
  }
  
  handleSearch(e) {
    this.setState({searchString: e.target.value});
  }
  
  render() {
    let award_list = this.props.award_list;
    let searchString = this.state.searchString.trim().toLowerCase();
    if (searchString.length > 0) {
      award_list = this.props.award_list.filter( (award) =>
               award.name.toLowerCase().match(searchString)
            );
    }
    
  return (
      <div>
        <div className="search-container">
          <input id="search-field" value={this.state.searchString} onChange={this.handleSearch} placeholder="Search..." />
          <button type="submit" className="fa fa-search"></button>
        </div>
        <div className="container-fluid">
          <div className="row award-container">
            {award_list.map( (award, index) =>
            <div key={index} className="col-xs-12 col-sm-6 col-md-4">
              <div className="award-item-container">
                <img className="award-logo" href={'/awards/' + award.id} src={award.profile_img} />
                <h4>{award.name}</h4>
              </div>
            </div>)}
          </div>
        </div>
      </div>
    )
  }
}
