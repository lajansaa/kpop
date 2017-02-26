class AwardItem extends React.Component {
    render() {
        let awardComponents = this.props.awards.map((award, index) => {
          return (
            <li key={index} className="award-item">
                {award.name} {award.url}
            </li>
            );
        });
        return <ul className="award-box">{awardComponents}</ul>;
  }
};