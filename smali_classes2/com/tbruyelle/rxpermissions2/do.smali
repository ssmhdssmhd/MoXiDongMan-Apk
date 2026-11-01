.class public Lcom/tbruyelle/rxpermissions2/do;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final do:Ljava/lang/String;

.field public final for:Z

.field public final if:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/tbruyelle/rxpermissions2/do;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/tbruyelle/rxpermissions2/do;->do:Ljava/lang/String;

    .line 4
    iput-boolean p2, p0, Lcom/tbruyelle/rxpermissions2/do;->if:Z

    .line 5
    iput-boolean p3, p0, Lcom/tbruyelle/rxpermissions2/do;->for:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tbruyelle/rxpermissions2/do;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-direct {p0, p1}, Lcom/tbruyelle/rxpermissions2/do;->if(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tbruyelle/rxpermissions2/do;->do:Ljava/lang/String;

    .line 8
    invoke-direct {p0, p1}, Lcom/tbruyelle/rxpermissions2/do;->do(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tbruyelle/rxpermissions2/do;->if:Z

    .line 9
    invoke-direct {p0, p1}, Lcom/tbruyelle/rxpermissions2/do;->for(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tbruyelle/rxpermissions2/do;->for:Z

    return-void
.end method

.method private do(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tbruyelle/rxpermissions2/do;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/new;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/new;

    move-result-object p1

    new-instance v0, Lcom/tbruyelle/rxpermissions2/do$for;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/do$for;-><init>(Lcom/tbruyelle/rxpermissions2/do;)V

    .line 2
    invoke-virtual {p1, v0}, Lio/reactivex/new;->all(Lio/reactivex/functions/Predicate;)Landroid/support/v4/jz1;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/jz1;->try()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method private for(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tbruyelle/rxpermissions2/do;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/new;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/new;

    move-result-object p1

    new-instance v0, Lcom/tbruyelle/rxpermissions2/do$new;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/do$new;-><init>(Lcom/tbruyelle/rxpermissions2/do;)V

    .line 2
    invoke-virtual {p1, v0}, Lio/reactivex/new;->any(Lio/reactivex/functions/Predicate;)Landroid/support/v4/jz1;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/jz1;->try()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method private if(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tbruyelle/rxpermissions2/do;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/new;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/new;

    move-result-object p1

    new-instance v0, Lcom/tbruyelle/rxpermissions2/do$if;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/do$if;-><init>(Lcom/tbruyelle/rxpermissions2/do;)V

    .line 2
    invoke-virtual {p1, v0}, Lio/reactivex/new;->map(Lio/reactivex/functions/Function;)Lio/reactivex/new;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/tbruyelle/rxpermissions2/do$do;

    invoke-direct {v1, p0}, Lcom/tbruyelle/rxpermissions2/do$do;-><init>(Lcom/tbruyelle/rxpermissions2/do;)V

    .line 3
    invoke-virtual {p1, v0, v1}, Lio/reactivex/new;->collectInto(Ljava/lang/Object;Lio/reactivex/functions/BiConsumer;)Landroid/support/v4/jz1;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/support/v4/jz1;->try()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/tbruyelle/rxpermissions2/do;

    .line 3
    iget-boolean v1, p0, Lcom/tbruyelle/rxpermissions2/do;->if:Z

    iget-boolean v2, p1, Lcom/tbruyelle/rxpermissions2/do;->if:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 4
    :cond_2
    iget-boolean v1, p0, Lcom/tbruyelle/rxpermissions2/do;->for:Z

    iget-boolean v2, p1, Lcom/tbruyelle/rxpermissions2/do;->for:Z

    if-eq v1, v2, :cond_3

    return v0

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/do;->do:Ljava/lang/String;

    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/do;->do:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/do;->do:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-boolean v1, p0, Lcom/tbruyelle/rxpermissions2/do;->if:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-boolean v1, p0, Lcom/tbruyelle/rxpermissions2/do;->for:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tbruyelle/rxpermissions2/do;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", granted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tbruyelle/rxpermissions2/do;->if:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldShowRequestPermissionRationale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tbruyelle/rxpermissions2/do;->for:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
