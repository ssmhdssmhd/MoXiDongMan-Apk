.class Lcom/wsw/cospa/dao/if$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/yuweiguocn/library/greendao/MigrationHelper$ReCreateAllTableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/dao/if;->onUpgrade(Lorg/greenrobot/greendao/database/Database;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/dao/if;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/dao/if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/dao/if$do;->do:Lcom/wsw/cospa/dao/if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/wsw/cospa/dao/for;->do(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method

.method public onDropAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/wsw/cospa/dao/for;->if(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method
