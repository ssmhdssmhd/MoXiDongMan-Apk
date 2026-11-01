.class Lcom/wsw/cospa/adapter/LocalCompressAdapter$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/adapter/LocalCompressAdapter;->catch(Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/adapter/LocalCompressAdapter;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/adapter/LocalCompressAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter$do;->do:Lcom/wsw/cospa/adapter/LocalCompressAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter$do;->do:Lcom/wsw/cospa/adapter/LocalCompressAdapter;

    invoke-static {p1}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->do(Lcom/wsw/cospa/adapter/LocalCompressAdapter;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/activity/LocalPreviewActivity;

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->G0()V

    return-void
.end method
