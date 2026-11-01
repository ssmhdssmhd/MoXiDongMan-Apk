.class Lcom/wsw/cospa/dao/DatabaseHelper$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/dao/DatabaseHelper;->o(Lcom/wsw/cospa/bean/SearchComicBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/bean/SearchComicBean;

.field public final synthetic if:Lcom/wsw/cospa/dao/DatabaseHelper;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/dao/DatabaseHelper;Lcom/wsw/cospa/bean/SearchComicBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/dao/DatabaseHelper$do;->if:Lcom/wsw/cospa/dao/DatabaseHelper;

    iput-object p2, p0, Lcom/wsw/cospa/dao/DatabaseHelper$do;->do:Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/dao/DatabaseHelper$do;->if:Lcom/wsw/cospa/dao/DatabaseHelper;

    invoke-static {v0}, Lcom/wsw/cospa/dao/DatabaseHelper;->new(Lcom/wsw/cospa/dao/DatabaseHelper;)Lcom/wsw/cospa/dao/SearchComicBeanDao;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/wsw/cospa/bean/SearchComicBean;

    iget-object v2, p0, Lcom/wsw/cospa/dao/DatabaseHelper$do;->do:Lcom/wsw/cospa/bean/SearchComicBean;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx([Ljava/lang/Object;)V

    return-void
.end method
