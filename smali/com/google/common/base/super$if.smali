.class public final Lcom/google/common/base/super$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/super;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/super$if$do;
    }
.end annotation


# instance fields
.field private final do:Ljava/lang/String;

.field private for:Lcom/google/common/base/super$if$do;

.field private final if:Lcom/google/common/base/super$if$do;

.field private new:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/google/common/base/super$if$do;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/super$if$do;-><init>(Lcom/google/common/base/super$do;)V

    iput-object v0, p0, Lcom/google/common/base/super$if;->if:Lcom/google/common/base/super$if$do;

    .line 4
    iput-object v0, p0, Lcom/google/common/base/super$if;->for:Lcom/google/common/base/super$if$do;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/common/base/super$if;->new:Z

    .line 6
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/base/super$if;->do:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/google/common/base/super$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/base/super$if;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private break(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/super$if;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/common/base/super$if;->goto()Lcom/google/common/base/super$if$do;

    move-result-object v0

    .line 2
    iput-object p2, v0, Lcom/google/common/base/super$if$do;->if:Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/google/common/base/super$if$do;->do:Ljava/lang/String;

    return-object p0
.end method

.method private goto()Lcom/google/common/base/super$if$do;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/base/super$if$do;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/super$if$do;-><init>(Lcom/google/common/base/super$do;)V

    .line 2
    iget-object v1, p0, Lcom/google/common/base/super$if;->for:Lcom/google/common/base/super$if$do;

    iput-object v0, v1, Lcom/google/common/base/super$if$do;->for:Lcom/google/common/base/super$if$do;

    iput-object v0, p0, Lcom/google/common/base/super$if;->for:Lcom/google/common/base/super$if$do;

    return-object v0
.end method

.method private this(Ljava/lang/Object;)Lcom/google/common/base/super$if;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/common/base/super$if;->goto()Lcom/google/common/base/super$if$do;

    move-result-object v0

    .line 2
    iput-object p1, v0, Lcom/google/common/base/super$if$do;->if:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public case(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/super$if;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/super$if;->break(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/super$if;

    move-result-object p1

    return-object p1
.end method

.method public catch(C)Lcom/google/common/base/super$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/base/super$if;->this(Ljava/lang/Object;)Lcom/google/common/base/super$if;

    move-result-object p1

    return-object p1
.end method

.method public class(D)Lcom/google/common/base/super$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/base/super$if;->this(Ljava/lang/Object;)Lcom/google/common/base/super$if;

    move-result-object p1

    return-object p1
.end method

.method public const(F)Lcom/google/common/base/super$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/base/super$if;->this(Ljava/lang/Object;)Lcom/google/common/base/super$if;

    move-result-object p1

    return-object p1
.end method

.method public do(Ljava/lang/String;C)Lcom/google/common/base/super$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/super$if;->break(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/super$if;

    move-result-object p1

    return-object p1
.end method

.method public else(Ljava/lang/String;Z)Lcom/google/common/base/super$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/super$if;->break(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/super$if;

    move-result-object p1

    return-object p1
.end method

.method public final(I)Lcom/google/common/base/super$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/base/super$if;->this(Ljava/lang/Object;)Lcom/google/common/base/super$if;

    move-result-object p1

    return-object p1
.end method

.method public for(Ljava/lang/String;F)Lcom/google/common/base/super$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/super$if;->break(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/super$if;

    move-result-object p1

    return-object p1
.end method

.method public if(Ljava/lang/String;D)Lcom/google/common/base/super$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/super$if;->break(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/super$if;

    move-result-object p1

    return-object p1
.end method

.method public import()Lcom/google/common/base/super$if;
    .locals 1
    .annotation build Landroid/support/v4/lf;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/common/base/super$if;->new:Z

    return-object p0
.end method

.method public new(Ljava/lang/String;I)Lcom/google/common/base/super$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/super$if;->break(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/super$if;

    move-result-object p1

    return-object p1
.end method

.method public super(J)Lcom/google/common/base/super$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/base/super$if;->this(Ljava/lang/Object;)Lcom/google/common/base/super$if;

    move-result-object p1

    return-object p1
.end method

.method public throw(Ljava/lang/Object;)Lcom/google/common/base/super$if;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/base/super$if;->this(Ljava/lang/Object;)Lcom/google/common/base/super$if;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/google/common/base/super$if;->new:Z

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lcom/google/common/base/super$if;->do:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    iget-object v2, p0, Lcom/google/common/base/super$if;->if:Lcom/google/common/base/super$if$do;

    iget-object v2, v2, Lcom/google/common/base/super$if$do;->for:Lcom/google/common/base/super$if$do;

    const-string v3, ""

    :goto_0
    if-eqz v2, :cond_4

    .line 4
    iget-object v4, v2, Lcom/google/common/base/super$if$do;->if:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-eqz v4, :cond_3

    .line 5
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v3, v2, Lcom/google/common/base/super$if$do;->do:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v4, :cond_2

    .line 8
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    .line 9
    invoke-static {v5}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v1, v4, v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v3, ", "

    .line 12
    :cond_3
    iget-object v2, v2, Lcom/google/common/base/super$if$do;->for:Lcom/google/common/base/super$if$do;

    goto :goto_0

    :cond_4
    const/16 v0, 0x7d

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try(Ljava/lang/String;J)Lcom/google/common/base/super$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/super$if;->break(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/super$if;

    move-result-object p1

    return-object p1
.end method

.method public while(Z)Lcom/google/common/base/super$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/base/super$if;->this(Ljava/lang/Object;)Lcom/google/common/base/super$if;

    move-result-object p1

    return-object p1
.end method
