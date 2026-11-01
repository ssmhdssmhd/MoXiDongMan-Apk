.class final Lcom/google/common/collect/r2;
.super Lcom/google/common/collect/p0;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/p0<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/google/common/collect/r2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/r2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final transient alternatingKeysAndValues:[Ljava/lang/Object;
    .annotation build Landroid/support/v4/af2;
    .end annotation
.end field

.field private final transient case:I

.field private final transient else:I

.field private final transient goto:Lcom/google/common/collect/r2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/r2<",
            "TV;TK;>;"
        }
    .end annotation
.end field

.field private final transient try:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/r2;

    invoke-direct {v0}, Lcom/google/common/collect/r2;-><init>()V

    sput-object v0, Lcom/google/common/collect/r2;->EMPTY:Lcom/google/common/collect/r2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/p0;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/common/collect/r2;->try:Ljava/lang/Object;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    iput-object v1, p0, Lcom/google/common/collect/r2;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 4
    iput v0, p0, Lcom/google/common/collect/r2;->case:I

    .line 5
    iput v0, p0, Lcom/google/common/collect/r2;->else:I

    .line 6
    iput-object p0, p0, Lcom/google/common/collect/r2;->goto:Lcom/google/common/collect/r2;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;ILcom/google/common/collect/r2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "I",
            "Lcom/google/common/collect/r2<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/google/common/collect/p0;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/common/collect/r2;->try:Ljava/lang/Object;

    .line 17
    iput-object p2, p0, Lcom/google/common/collect/r2;->alternatingKeysAndValues:[Ljava/lang/Object;

    const/4 p1, 0x1

    .line 18
    iput p1, p0, Lcom/google/common/collect/r2;->case:I

    .line 19
    iput p3, p0, Lcom/google/common/collect/r2;->else:I

    .line 20
    iput-object p4, p0, Lcom/google/common/collect/r2;->goto:Lcom/google/common/collect/r2;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 2

    .line 7
    invoke-direct {p0}, Lcom/google/common/collect/p0;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/common/collect/r2;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 9
    iput p2, p0, Lcom/google/common/collect/r2;->else:I

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/google/common/collect/r2;->case:I

    const/4 v1, 0x2

    if-lt p2, v1, :cond_0

    .line 11
    invoke-static {p2}, Lcom/google/common/collect/g1;->chooseTableSize(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-static {p1, p2, v1, v0}, Lcom/google/common/collect/t2;->createHashTable([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/r2;->try:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 13
    invoke-static {p1, p2, v1, v0}, Lcom/google/common/collect/t2;->createHashTable([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/google/common/collect/r2;

    invoke-direct {v1, v0, p1, p2, p0}, Lcom/google/common/collect/r2;-><init>(Ljava/lang/Object;[Ljava/lang/Object;ILcom/google/common/collect/r2;)V

    iput-object v1, p0, Lcom/google/common/collect/r2;->goto:Lcom/google/common/collect/r2;

    return-void
.end method


# virtual methods
.method public createEntrySet()Lcom/google/common/collect/g1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/t2$do;

    iget-object v1, p0, Lcom/google/common/collect/r2;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/r2;->case:I

    iget v3, p0, Lcom/google/common/collect/r2;->else:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/common/collect/t2$do;-><init>(Lcom/google/common/collect/x0;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method public createKeySet()Lcom/google/common/collect/g1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "TK;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/t2$for;

    iget-object v1, p0, Lcom/google/common/collect/r2;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/r2;->case:I

    iget v3, p0, Lcom/google/common/collect/r2;->else:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/t2$for;-><init>([Ljava/lang/Object;II)V

    .line 2
    new-instance v1, Lcom/google/common/collect/t2$if;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/t2$if;-><init>(Lcom/google/common/collect/x0;Lcom/google/common/collect/v0;)V

    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/r2;->try:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/r2;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/r2;->else:I

    iget v3, p0, Lcom/google/common/collect/r2;->case:I

    .line 2
    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/common/collect/t2;->get(Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/BiMap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/r2;->inverse()Lcom/google/common/collect/p0;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lcom/google/common/collect/p0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/p0<",
            "TV;TK;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/r2;->goto:Lcom/google/common/collect/r2;

    return-object v0
.end method

.method public isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/r2;->else:I

    return v0
.end method
