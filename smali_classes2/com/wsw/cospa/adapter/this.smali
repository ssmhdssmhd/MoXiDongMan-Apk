.class public final synthetic Lcom/wsw/cospa/adapter/this;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

.field public final synthetic for:Lcom/wsw/cospa/bean/Task;

.field public final synthetic if:Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/adapter/DownloadTaskAdapter;Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;Lcom/wsw/cospa/bean/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/adapter/this;->do:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    iput-object p2, p0, Lcom/wsw/cospa/adapter/this;->if:Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;

    iput-object p3, p0, Lcom/wsw/cospa/adapter/this;->for:Lcom/wsw/cospa/bean/Task;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/wsw/cospa/adapter/this;->do:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    iget-object v1, p0, Lcom/wsw/cospa/adapter/this;->if:Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;

    iget-object v2, p0, Lcom/wsw/cospa/adapter/this;->for:Lcom/wsw/cospa/bean/Task;

    invoke-static {v0, v1, v2, p1}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->if(Lcom/wsw/cospa/adapter/DownloadTaskAdapter;Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;Lcom/wsw/cospa/bean/Task;Landroid/view/View;)V

    return-void
.end method
