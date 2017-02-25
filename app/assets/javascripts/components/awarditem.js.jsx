class AwardItem extends React.Component {
    render() {
        var awardList = [
          {name:'mcountdown',url:'mcountdown.com'},
          {name:'inkigayo',url:'inkigayo.com'}
        ] 
        var awardComponents = awardList.map((award, index) => {
          return (
            <li key={index} className="award-item">
                {award.name} {award.url}
            </li>
            );
        });
        return <ul className="award-box">{awardComponents}</ul>;
  }
};
 
 
 



