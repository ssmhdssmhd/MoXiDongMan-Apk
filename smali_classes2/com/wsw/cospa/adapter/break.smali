.class public final synthetic Lcom/wsw/cospa/adapter/break;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

.field public final synthetic if:Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/adapter/DownloadTaskAdapter;Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/adapter/break;->do:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    iput-object p2, p0, Lcom/wsw/cospa/adapter/break;->if:Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/wsw/cospa/adapter/break;->do:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    iget-object v1, p0, Lcom/wsw/cospa/adapter/break;->if:Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->do(Lcom/wsw/cospa/adapter/DownloadTaskAdapter;Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
