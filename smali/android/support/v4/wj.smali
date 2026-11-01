.class public final synthetic Landroid/support/v4/wj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/presenter/do;

.field public final synthetic if:Lcom/wsw/cospa/bean/ComicContentImgBean;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/presenter/do;Lcom/wsw/cospa/bean/ComicContentImgBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/wj;->do:Lcom/wsw/cospa/presenter/do;

    iput-object p2, p0, Landroid/support/v4/wj;->if:Lcom/wsw/cospa/bean/ComicContentImgBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/wj;->do:Lcom/wsw/cospa/presenter/do;

    iget-object v1, p0, Landroid/support/v4/wj;->if:Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-static {v0, v1}, Lcom/wsw/cospa/presenter/do;->finally(Lcom/wsw/cospa/presenter/do;Lcom/wsw/cospa/bean/ComicContentImgBean;)V

    return-void
.end method
