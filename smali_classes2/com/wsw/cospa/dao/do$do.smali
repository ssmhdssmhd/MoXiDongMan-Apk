.class Lcom/wsw/cospa/dao/do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/dao/do;->r(Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/bean/ComicShelfGroupBean;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/dao/do$do;->do:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->else()Lcom/wsw/cospa/dao/ComicShelfGroupBeanDao;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    .line 2
    iget-object v2, p0, Lcom/wsw/cospa/dao/do$do;->do:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->updateInTx([Ljava/lang/Object;)V

    return-void
.end method
