.class Lfreemarker/core/c4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final for:Lfreemarker/core/c4;


# instance fields
.field private final do:[Lfreemarker/core/b4;

.field private final if:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lfreemarker/core/c4;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfreemarker/core/c4;-><init>([Lfreemarker/core/b4;I)V

    sput-object v0, Lfreemarker/core/c4;->for:Lfreemarker/core/c4;

    return-void
.end method

.method public constructor <init>([Lfreemarker/core/b4;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/c4;->do:[Lfreemarker/core/b4;

    .line 3
    iput p2, p0, Lfreemarker/core/c4;->if:I

    return-void
.end method


# virtual methods
.method public case()Lfreemarker/core/b4;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/c4;->do:[Lfreemarker/core/b4;

    if-eqz v0, :cond_0

    iget v1, p0, Lfreemarker/core/c4;->if:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public do()Lfreemarker/core/c2;
    .locals 4

    .line 1
    new-instance v0, Lfreemarker/core/c2;

    invoke-direct {v0}, Lfreemarker/core/c2;-><init>()V

    .line 2
    iget v1, p0, Lfreemarker/core/c4;->if:I

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lfreemarker/core/c4;->do:[Lfreemarker/core/b4;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 4
    invoke-virtual {v0, p0}, Lfreemarker/core/b4;->p(Lfreemarker/core/c4;)V

    .line 5
    invoke-virtual {v1}, Lfreemarker/core/h4;->getTemplate()Lfreemarker/template/static;

    move-result-object v2

    invoke-virtual {p0}, Lfreemarker/core/c4;->case()Lfreemarker/core/b4;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lfreemarker/core/h4;->final(Lfreemarker/template/static;Lfreemarker/core/h4;Lfreemarker/core/h4;)V

    :cond_0
    return-object v0
.end method

.method public for()[Lfreemarker/core/b4;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/c4;->do:[Lfreemarker/core/b4;

    return-object v0
.end method

.method public if()Lfreemarker/core/b4;
    .locals 4

    .line 1
    iget v0, p0, Lfreemarker/core/c4;->if:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lfreemarker/core/k4;

    sget-object v2, Landroid/support/v4/vm;->for:[C

    invoke-direct {v0, v2, v1}, Lfreemarker/core/k4;-><init>([CZ)V

    return-object v0

    .line 3
    :cond_0
    iget-object v2, p0, Lfreemarker/core/c4;->do:[Lfreemarker/core/b4;

    aget-object v1, v2, v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return-object v1

    .line 4
    :cond_1
    new-instance v0, Lfreemarker/core/c2;

    invoke-direct {v0}, Lfreemarker/core/c2;-><init>()V

    .line 5
    invoke-virtual {v0, p0}, Lfreemarker/core/b4;->p(Lfreemarker/core/c4;)V

    .line 6
    invoke-virtual {v1}, Lfreemarker/core/h4;->getTemplate()Lfreemarker/template/static;

    move-result-object v2

    invoke-virtual {p0}, Lfreemarker/core/c4;->case()Lfreemarker/core/b4;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lfreemarker/core/h4;->final(Lfreemarker/template/static;Lfreemarker/core/h4;Lfreemarker/core/h4;)V

    return-object v0
.end method

.method public new()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/core/c4;->if:I

    return v0
.end method

.method public try()Lfreemarker/core/b4;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/c4;->do:[Lfreemarker/core/b4;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
