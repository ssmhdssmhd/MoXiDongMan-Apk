.class Lcom/wsw/cospa/dao/DatabaseHelper$case;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/dao/DatabaseHelper;->d(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/ArrayList;

.field public final synthetic if:Lcom/wsw/cospa/dao/DatabaseHelper;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/dao/DatabaseHelper;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/dao/DatabaseHelper$case;->if:Lcom/wsw/cospa/dao/DatabaseHelper;

    iput-object p2, p0, Lcom/wsw/cospa/dao/DatabaseHelper$case;->do:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/dao/DatabaseHelper$case;->if:Lcom/wsw/cospa/dao/DatabaseHelper;

    invoke-static {v0}, Lcom/wsw/cospa/dao/DatabaseHelper;->else(Lcom/wsw/cospa/dao/DatabaseHelper;)Lcom/wsw/cospa/dao/RipeFileDao;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/dao/DatabaseHelper$case;->do:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    return-void
.end method
