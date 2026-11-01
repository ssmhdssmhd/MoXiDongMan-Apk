.class public final synthetic Landroid/support/v4/ub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/bean/ComicShelfBean;

.field public final synthetic if:Lcom/wsw/cospa/bean/ComicShelfGroupBean;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/bean/ComicShelfBean;Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/ub;->do:Lcom/wsw/cospa/bean/ComicShelfBean;

    iput-object p2, p0, Landroid/support/v4/ub;->if:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/ub;->do:Lcom/wsw/cospa/bean/ComicShelfBean;

    iget-object v1, p0, Landroid/support/v4/ub;->if:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    invoke-static {v0, v1}, Lcom/wsw/cospa/dao/do;->new(Lcom/wsw/cospa/bean/ComicShelfBean;Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V

    return-void
.end method
