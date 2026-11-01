.class public final synthetic Landroid/support/v4/fk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

.field public final synthetic for:I

.field public final synthetic if:Lcom/wsw/cospa/bean/ChapterListBean;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/adapter/ChapterGridAdapter;Lcom/wsw/cospa/bean/ChapterListBean;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/fk;->do:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    iput-object p2, p0, Landroid/support/v4/fk;->if:Lcom/wsw/cospa/bean/ChapterListBean;

    iput p3, p0, Landroid/support/v4/fk;->for:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/fk;->do:Lcom/wsw/cospa/adapter/ChapterGridAdapter;

    iget-object v1, p0, Landroid/support/v4/fk;->if:Lcom/wsw/cospa/bean/ChapterListBean;

    iget v2, p0, Landroid/support/v4/fk;->for:I

    invoke-static {v0, v1, v2, p1}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->do(Lcom/wsw/cospa/adapter/ChapterGridAdapter;Lcom/wsw/cospa/bean/ChapterListBean;ILandroid/view/View;)V

    return-void
.end method
