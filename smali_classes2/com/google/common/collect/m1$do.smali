.class public final Lcom/google/common/collect/m1$do;
.super Lcom/google/common/collect/g1$do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m1;
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
        "Lcom/google/common/collect/g1$do<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final else:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/g1$do;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lcom/google/common/collect/m1$do;->else:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public bridge synthetic break([Ljava/lang/Object;)Lcom/google/common/collect/g1$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/m1$do;->throw([Ljava/lang/Object;)Lcom/google/common/collect/m1$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic catch(Ljava/lang/Iterable;)Lcom/google/common/collect/g1$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/m1$do;->while(Ljava/lang/Iterable;)Lcom/google/common/collect/m1$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic class(Ljava/util/Iterator;)Lcom/google/common/collect/g1$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/m1$do;->import(Ljava/util/Iterator;)Lcom/google/common/collect/m1$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic do(Ljava/lang/Object;)Lcom/google/common/collect/r0$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/m1$do;->super(Ljava/lang/Object;)Lcom/google/common/collect/m1$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic else(Ljava/lang/Object;)Lcom/google/common/collect/r0$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/m1$do;->super(Ljava/lang/Object;)Lcom/google/common/collect/m1$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic final()Lcom/google/common/collect/g1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/m1$do;->native()Lcom/google/common/collect/m1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic for(Ljava/lang/Iterable;)Lcom/google/common/collect/r0$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/m1$do;->while(Ljava/lang/Iterable;)Lcom/google/common/collect/m1$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic if([Ljava/lang/Object;)Lcom/google/common/collect/r0$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/m1$do;->throw([Ljava/lang/Object;)Lcom/google/common/collect/m1$do;

    move-result-object p1

    return-object p1
.end method

.method public import(Ljava/util/Iterator;)Lcom/google/common/collect/m1$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/google/common/collect/m1$do<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/g1$do;->class(Ljava/util/Iterator;)Lcom/google/common/collect/g1$do;

    return-object p0
.end method

.method public native()Lcom/google/common/collect/m1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/m1<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/r0$do;->if:[Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/m1$do;->else:Ljava/util/Comparator;

    iget v2, p0, Lcom/google/common/collect/r0$do;->for:I

    invoke-static {v1, v2, v0}, Lcom/google/common/collect/m1;->construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lcom/google/common/collect/m1;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/r0$do;->for:I

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/google/common/collect/r0$do;->new:Z

    return-object v0
.end method

.method public bridge synthetic new(Ljava/util/Iterator;)Lcom/google/common/collect/r0$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/m1$do;->import(Ljava/util/Iterator;)Lcom/google/common/collect/m1$do;

    move-result-object p1

    return-object p1
.end method

.method public super(Ljava/lang/Object;)Lcom/google/common/collect/m1$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/m1$do<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/g1$do;->this(Ljava/lang/Object;)Lcom/google/common/collect/g1$do;

    return-object p0
.end method

.method public bridge synthetic this(Ljava/lang/Object;)Lcom/google/common/collect/g1$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/m1$do;->super(Ljava/lang/Object;)Lcom/google/common/collect/m1$do;

    move-result-object p1

    return-object p1
.end method

.method public varargs throw([Ljava/lang/Object;)Lcom/google/common/collect/m1$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/m1$do<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/g1$do;->break([Ljava/lang/Object;)Lcom/google/common/collect/g1$do;

    return-object p0
.end method

.method public bridge synthetic try()Lcom/google/common/collect/r0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/m1$do;->native()Lcom/google/common/collect/m1;

    move-result-object v0

    return-object v0
.end method

.method public while(Ljava/lang/Iterable;)Lcom/google/common/collect/m1$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/m1$do<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/g1$do;->catch(Ljava/lang/Iterable;)Lcom/google/common/collect/g1$do;

    return-object p0
.end method
