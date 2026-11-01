.class public final Lcom/google/common/collect/v0$do;
.super Lcom/google/common/collect/r0$do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/r0$do<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/collect/v0$do;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/r0$do;-><init>(I)V

    return-void
.end method


# virtual methods
.method public varargs break([Ljava/lang/Object;)Lcom/google/common/collect/v0$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/v0$do<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/r0$do;->if([Ljava/lang/Object;)Lcom/google/common/collect/r0$if;

    return-object p0
.end method

.method public catch(Ljava/lang/Iterable;)Lcom/google/common/collect/v0$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/v0$do<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/r0$do;->for(Ljava/lang/Iterable;)Lcom/google/common/collect/r0$if;

    return-object p0
.end method

.method public class(Ljava/util/Iterator;)Lcom/google/common/collect/v0$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/google/common/collect/v0$do<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/r0$if;->new(Ljava/util/Iterator;)Lcom/google/common/collect/r0$if;

    return-object p0
.end method

.method public const()Lcom/google/common/collect/v0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/v0<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/common/collect/r0$do;->new:Z

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/r0$do;->if:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/r0$do;->for:I

    invoke-static {v0, v1}, Lcom/google/common/collect/v0;->asImmutableList([Ljava/lang/Object;I)Lcom/google/common/collect/v0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic do(Ljava/lang/Object;)Lcom/google/common/collect/r0$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/v0$do;->this(Ljava/lang/Object;)Lcom/google/common/collect/v0$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic else(Ljava/lang/Object;)Lcom/google/common/collect/r0$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/v0$do;->this(Ljava/lang/Object;)Lcom/google/common/collect/v0$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic for(Ljava/lang/Iterable;)Lcom/google/common/collect/r0$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/v0$do;->catch(Ljava/lang/Iterable;)Lcom/google/common/collect/v0$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic if([Ljava/lang/Object;)Lcom/google/common/collect/r0$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/v0$do;->break([Ljava/lang/Object;)Lcom/google/common/collect/v0$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic new(Ljava/util/Iterator;)Lcom/google/common/collect/r0$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/v0$do;->class(Ljava/util/Iterator;)Lcom/google/common/collect/v0$do;

    move-result-object p1

    return-object p1
.end method

.method public this(Ljava/lang/Object;)Lcom/google/common/collect/v0$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/v0$do<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/r0$do;->else(Ljava/lang/Object;)Lcom/google/common/collect/r0$do;

    return-object p0
.end method

.method public bridge synthetic try()Lcom/google/common/collect/r0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/v0$do;->const()Lcom/google/common/collect/v0;

    move-result-object v0

    return-object v0
.end method
