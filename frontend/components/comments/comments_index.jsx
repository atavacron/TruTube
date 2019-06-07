import React from 'react';
import CommentIndexItem from './comment_index_item';
import {fetchComments} from '../../actions/comment_actions'


class CommentIndex extends React.Component {
    componentDidMount(){
        this.props.fetchComments(this.props.props.match.params.videoId)
    }


    render() {
        debugger
        const comments = this.props.comments.map(comment => {
            return (
                <CommentIndexItem key={comment.id} comment={comment} />
            )
        })

        return(
            <div className="comments">
                <ul>
                    {comments}
                </ul>
            </div>
        )

    }
}


export default CommentIndex;