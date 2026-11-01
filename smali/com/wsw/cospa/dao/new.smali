.class public Lcom/wsw/cospa/dao/new;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/dao/new$if;
    }
.end annotation


# instance fields
.field private do:Lcom/wsw/cospa/dao/for;

.field private for:Lcom/wsw/cospa/dao/if;

.field private if:Landroid/support/v4/hw;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wsw/cospa/dao/new$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/dao/new;-><init>()V

    return-void
.end method

.method public static case()Lcom/wsw/cospa/dao/new;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/new$if;->do()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public do()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/dao/new;->for()V

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/dao/new;->if()V

    return-void
.end method

.method public else(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/wsw/cospa/dao/if;

    const-string v1, "comic-db"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/wsw/cospa/dao/if;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    iput-object v0, p0, Lcom/wsw/cospa/dao/new;->for:Lcom/wsw/cospa/dao/if;

    .line 2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/wsw/cospa/dao/for;

    invoke-direct {v0, p1}, Lcom/wsw/cospa/dao/for;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/wsw/cospa/dao/new;->do:Lcom/wsw/cospa/dao/for;

    .line 4
    invoke-virtual {v0}, Lcom/wsw/cospa/dao/for;->new()Landroid/support/v4/hw;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/dao/new;->if:Landroid/support/v4/hw;

    return-void
.end method

.method public for()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/dao/new;->for:Lcom/wsw/cospa/dao/if;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/wsw/cospa/dao/new;->for:Lcom/wsw/cospa/dao/if;

    :cond_0
    return-void
.end method

.method public if()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/dao/new;->if:Landroid/support/v4/hw;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/hw;->do()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/wsw/cospa/dao/new;->if:Landroid/support/v4/hw;

    :cond_0
    return-void
.end method

.method public new()Lcom/wsw/cospa/dao/for;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/dao/new;->do:Lcom/wsw/cospa/dao/for;

    return-object v0
.end method

.method public try()Landroid/support/v4/hw;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/dao/new;->if:Landroid/support/v4/hw;

    return-object v0
.end method
