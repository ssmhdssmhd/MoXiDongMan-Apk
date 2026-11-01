.class public final synthetic Landroid/support/v4/s20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/adapter/DownloadListAdapter;

.field public final synthetic if:I


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/adapter/DownloadListAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/s20;->do:Lcom/wsw/cospa/adapter/DownloadListAdapter;

    iput p2, p0, Landroid/support/v4/s20;->if:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/s20;->do:Lcom/wsw/cospa/adapter/DownloadListAdapter;

    iget v1, p0, Landroid/support/v4/s20;->if:I

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/adapter/DownloadListAdapter;->if(Lcom/wsw/cospa/adapter/DownloadListAdapter;ILandroid/view/View;)V

    return-void
.end method
