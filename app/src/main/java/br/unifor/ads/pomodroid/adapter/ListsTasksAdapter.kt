package br.unifor.ads.pomodroid.adapter

import android.content.Context
import android.support.v7.widget.RecyclerView
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import br.unifor.ads.pomodroid.R
import br.unifor.ads.pomodroid.entity.TaskList

class ListsTasksAdapter(val context: Context, val lists: List<TaskList>) : RecyclerView.Adapter<ListsTasksAdapter.TaskViewHolder>() {

    class TaskViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

        val name: TextView
        val description: TextView

        init {

            name = itemView.findViewById(R.id.item_list_task_name)
            description = itemView.findViewById(R.id.item_list_task_description)

        }

    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): TaskViewHolder {

        val itemView = LayoutInflater.from(context).inflate(R.layout.item_list_task, parent, false)
        return TaskViewHolder(itemView)

    }

    override fun getItemCount(): Int {
        return lists.size
    }

    override fun onBindViewHolder(holder: TaskViewHolder, position: Int) {

        holder.name.text = lists[position].name
        holder.description.text = lists[position].description

    }

}