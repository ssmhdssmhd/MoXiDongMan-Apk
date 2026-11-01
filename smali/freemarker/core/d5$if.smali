.class Lfreemarker/core/d5$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/d5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private do:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field private for:Z

.field private if:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final synthetic new:Lfreemarker/core/d5;


# direct methods
.method private constructor <init>(Lfreemarker/core/d5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/d5$if;->new:Lfreemarker/core/d5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/core/d5;Lfreemarker/core/d5$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lfreemarker/core/d5$if;-><init>(Lfreemarker/core/d5;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lfreemarker/core/d5$if;->for:Z

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lfreemarker/core/d5$if;->do:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lfreemarker/core/d5$if;->new:Lfreemarker/core/d5;

    invoke-static {v0}, Lfreemarker/core/d5;->do(Lfreemarker/core/d5;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/d5$if;->do:Ljava/util/Iterator;

    .line 4
    :cond_0
    iget-object v0, p0, Lfreemarker/core/d5$if;->do:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lfreemarker/core/d5$if;->new:Lfreemarker/core/d5;

    invoke-static {v0}, Lfreemarker/core/d5;->if(Lfreemarker/core/d5;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/d5$if;->if:Ljava/util/Iterator;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lfreemarker/core/d5$if;->do:Ljava/util/Iterator;

    .line 7
    iput-boolean v1, p0, Lfreemarker/core/d5$if;->for:Z

    .line 8
    :cond_2
    iget-object v0, p0, Lfreemarker/core/d5$if;->if:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lfreemarker/core/d5$if;->for:Z

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lfreemarker/core/d5$if;->do:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lfreemarker/core/d5$if;->new:Lfreemarker/core/d5;

    invoke-static {v0}, Lfreemarker/core/d5;->do(Lfreemarker/core/d5;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/d5$if;->do:Ljava/util/Iterator;

    .line 4
    :cond_0
    iget-object v0, p0, Lfreemarker/core/d5$if;->do:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lfreemarker/core/d5$if;->do:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    iget-object v0, p0, Lfreemarker/core/d5$if;->new:Lfreemarker/core/d5;

    invoke-static {v0}, Lfreemarker/core/d5;->if(Lfreemarker/core/d5;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/d5$if;->if:Ljava/util/Iterator;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lfreemarker/core/d5$if;->do:Ljava/util/Iterator;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lfreemarker/core/d5$if;->for:Z

    .line 9
    :cond_2
    iget-object v0, p0, Lfreemarker/core/d5$if;->if:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
