.class public Landroid/support/v4/b52;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final break:Landroid/support/v4/b52;

.field public static final catch:Landroid/support/v4/b52;

.field public static final class:Landroid/support/v4/b52;

.field public static final const:Landroid/support/v4/b52;

.field public static final else:B = 0x0t

.field public static final final:Landroid/support/v4/b52;

.field public static final goto:I = 0x4

.field public static final import:Landroid/support/v4/b52;

.field public static final native:Landroid/support/v4/b52;

.field public static final public:Landroid/support/v4/b52;

.field public static final synthetic return:Z = false

.field public static final super:Landroid/support/v4/b52;

.field public static final this:I = 0x8

.field public static final throw:Landroid/support/v4/b52;

.field public static final while:Landroid/support/v4/b52;


# instance fields
.field public case:Z

.field public do:I

.field public for:Z

.field public if:Z

.field public new:B

.field public try:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/support/v4/b52;

    invoke-direct {v0}, Landroid/support/v4/b52;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/support/v4/b52;->new(I)Landroid/support/v4/b52;

    move-result-object v0

    sput-object v0, Landroid/support/v4/b52;->break:Landroid/support/v4/b52;

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/b52;->for()Landroid/support/v4/b52;

    move-result-object v0

    sput-object v0, Landroid/support/v4/b52;->catch:Landroid/support/v4/b52;

    .line 4
    new-instance v0, Landroid/support/v4/b52;

    invoke-direct {v0}, Landroid/support/v4/b52;-><init>()V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v2}, Landroid/support/v4/b52;->new(I)Landroid/support/v4/b52;

    move-result-object v0

    sput-object v0, Landroid/support/v4/b52;->class:Landroid/support/v4/b52;

    .line 6
    invoke-virtual {v0}, Landroid/support/v4/b52;->for()Landroid/support/v4/b52;

    move-result-object v0

    sput-object v0, Landroid/support/v4/b52;->const:Landroid/support/v4/b52;

    .line 7
    new-instance v0, Landroid/support/v4/b52;

    invoke-direct {v0}, Landroid/support/v4/b52;-><init>()V

    const/4 v3, 0x2

    .line 8
    invoke-virtual {v0, v3}, Landroid/support/v4/b52;->new(I)Landroid/support/v4/b52;

    move-result-object v0

    sput-object v0, Landroid/support/v4/b52;->final:Landroid/support/v4/b52;

    .line 9
    invoke-virtual {v0}, Landroid/support/v4/b52;->for()Landroid/support/v4/b52;

    move-result-object v0

    sput-object v0, Landroid/support/v4/b52;->super:Landroid/support/v4/b52;

    .line 10
    new-instance v0, Landroid/support/v4/b52;

    invoke-direct {v0}, Landroid/support/v4/b52;-><init>()V

    sput-object v0, Landroid/support/v4/b52;->throw:Landroid/support/v4/b52;

    .line 11
    iput-boolean v2, v0, Landroid/support/v4/b52;->case:Z

    .line 12
    new-instance v0, Landroid/support/v4/b52;

    invoke-direct {v0}, Landroid/support/v4/b52;-><init>()V

    .line 13
    invoke-virtual {v0}, Landroid/support/v4/b52;->try()Landroid/support/v4/b52;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/b52;->new(I)Landroid/support/v4/b52;

    move-result-object v0

    sput-object v0, Landroid/support/v4/b52;->while:Landroid/support/v4/b52;

    .line 14
    invoke-virtual {v0, v3}, Landroid/support/v4/b52;->new(I)Landroid/support/v4/b52;

    move-result-object v3

    sput-object v3, Landroid/support/v4/b52;->import:Landroid/support/v4/b52;

    .line 15
    invoke-virtual {v0, v2}, Landroid/support/v4/b52;->new(I)Landroid/support/v4/b52;

    move-result-object v2

    sput-object v2, Landroid/support/v4/b52;->native:Landroid/support/v4/b52;

    .line 16
    invoke-virtual {v0, v1}, Landroid/support/v4/b52;->new(I)Landroid/support/v4/b52;

    move-result-object v0

    sput-object v0, Landroid/support/v4/b52;->public:Landroid/support/v4/b52;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Landroid/support/v4/b52;->do:I

    return-void
.end method

.method private constructor <init>(Landroid/support/v4/b52;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget v0, p1, Landroid/support/v4/b52;->do:I

    iput v0, p0, Landroid/support/v4/b52;->do:I

    .line 5
    iget-boolean v0, p1, Landroid/support/v4/b52;->if:Z

    iput-boolean v0, p0, Landroid/support/v4/b52;->if:Z

    .line 6
    iget-boolean v0, p1, Landroid/support/v4/b52;->for:Z

    iput-boolean v0, p0, Landroid/support/v4/b52;->for:Z

    .line 7
    iget-byte v0, p1, Landroid/support/v4/b52;->new:B

    iput-byte v0, p0, Landroid/support/v4/b52;->new:B

    .line 8
    iget-object p1, p1, Landroid/support/v4/b52;->try:[B

    iput-object p1, p0, Landroid/support/v4/b52;->try:[B

    return-void
.end method


# virtual methods
.method public case()Landroid/support/v4/b52;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/b52;->for:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/b52;->if()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/b52;->try()Landroid/support/v4/b52;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public do(Lorg/chromium/base/task/TaskTraitsExtensionDescriptor;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Extension:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/chromium/base/task/TaskTraitsExtensionDescriptor<",
            "TExtension;>;)TExtension;"
        }
    .end annotation

    .line 1
    iget-byte v0, p0, Landroid/support/v4/b52;->new:B

    invoke-interface {p1}, Lorg/chromium/base/task/TaskTraitsExtensionDescriptor;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v4/b52;->try:[B

    invoke-interface {p1, v0}, Lorg/chromium/base/task/TaskTraitsExtensionDescriptor;->fromSerializedData([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public else(Lorg/chromium/base/task/TaskTraitsExtensionDescriptor;Ljava/lang/Object;)Landroid/support/v4/b52;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Extension:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/chromium/base/task/TaskTraitsExtensionDescriptor<",
            "TExtension;>;TExtension;)",
            "Landroid/support/v4/b52;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lorg/chromium/base/task/TaskTraitsExtensionDescriptor;->getId()I

    move-result v0

    .line 2
    invoke-interface {p1, p2}, Lorg/chromium/base/task/TaskTraitsExtensionDescriptor;->toSerializedData(Ljava/lang/Object;)[B

    move-result-object p1

    .line 3
    new-instance p2, Landroid/support/v4/b52;

    invoke-direct {p2, p0}, Landroid/support/v4/b52;-><init>(Landroid/support/v4/b52;)V

    int-to-byte v0, v0

    .line 4
    iput-byte v0, p2, Landroid/support/v4/b52;->new:B

    .line 5
    iput-object p1, p2, Landroid/support/v4/b52;->try:[B

    return-object p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Landroid/support/v4/b52;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Landroid/support/v4/b52;

    .line 3
    iget v1, p0, Landroid/support/v4/b52;->do:I

    iget v3, p1, Landroid/support/v4/b52;->do:I

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Landroid/support/v4/b52;->if:Z

    iget-boolean v3, p1, Landroid/support/v4/b52;->if:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Landroid/support/v4/b52;->for:Z

    iget-boolean v3, p1, Landroid/support/v4/b52;->for:Z

    if-ne v1, v3, :cond_1

    iget-byte v1, p0, Landroid/support/v4/b52;->new:B

    iget-byte v3, p1, Landroid/support/v4/b52;->new:B

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Landroid/support/v4/b52;->try:[B

    iget-object v3, p1, Landroid/support/v4/b52;->try:[B

    .line 4
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/support/v4/b52;->case:Z

    iget-boolean p1, p1, Landroid/support/v4/b52;->case:Z

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public for()Landroid/support/v4/b52;
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/b52;

    invoke-direct {v0, p0}, Landroid/support/v4/b52;-><init>(Landroid/support/v4/b52;)V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/support/v4/b52;->if:Z

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/b52;->do:I

    const/16 v1, 0x47b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 2
    iget-boolean v0, p0, Landroid/support/v4/b52;->if:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 3
    iget-boolean v0, p0, Landroid/support/v4/b52;->for:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 4
    iget-byte v0, p0, Landroid/support/v4/b52;->new:B

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 5
    iget-object v0, p0, Landroid/support/v4/b52;->try:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 6
    iget-boolean v0, p0, Landroid/support/v4/b52;->case:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method public if()Z
    .locals 1

    .line 1
    iget-byte v0, p0, Landroid/support/v4/b52;->new:B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public new(I)Landroid/support/v4/b52;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/b52;

    invoke-direct {v0, p0}, Landroid/support/v4/b52;-><init>(Landroid/support/v4/b52;)V

    .line 2
    iput p1, v0, Landroid/support/v4/b52;->do:I

    return-object v0
.end method

.method public try()Landroid/support/v4/b52;
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/b52;

    invoke-direct {v0, p0}, Landroid/support/v4/b52;-><init>(Landroid/support/v4/b52;)V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/support/v4/b52;->for:Z

    return-object v0
.end method
