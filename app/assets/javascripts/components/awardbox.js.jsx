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
      <div id="search-field">
        <i className="fa fa-search" aria-hidden="true"></i>
        <input value={this.state.searchString} onChange={this.handleSearch} placeholder="Search..." />
      </div>
      <ul className="award-list">
        {award_list.map( (award, index) => 
          <li key={index} className="award-item">
            <p>{award.name}</p>
          </li>)}
      </ul>      
    )
  }
}
