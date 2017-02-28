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
        <ul className="award-list">
          {award_list.map( (award, index) =>
            <li key={index} className="award-item">
              <a href={'/awards/' + award.id}>{award.name}</a>
            </li>)}
        </ul>
      </div>
    )
  }
}
