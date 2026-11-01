.class final Lorg/brotli/dec/class;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public abstract:I

.field public b:I

.field public break:Z

.field public c:I

.field public final case:[I

.field public final catch:Lorg/brotli/dec/goto;

.field public final class:Lorg/brotli/dec/goto;

.field public final const:Lorg/brotli/dec/goto;

.field public continue:I

.field public d:I

.field public default:I

.field public do:I

.field public e:J

.field public else:I

.field public extends:[B

.field public f:[B

.field public final final:[I

.field public finally:[B

.field public final for:Lorg/brotli/dec/do;

.field public g:I

.field public goto:Z

.field public h:I

.field public i:I

.field public if:I

.field public implements:I

.field public import:I

.field public instanceof:I

.field public interface:[B

.field public j:I

.field public k:I

.field public l:I

.field public m:[B

.field public native:I

.field public new:[B

.field public package:I

.field public private:I

.field public protected:I

.field public public:I

.field public return:Z

.field public static:I

.field public strictfp:I

.field public final super:[I

.field public switch:I

.field public synchronized:I

.field public this:Z

.field public final throw:[I

.field public throws:I

.field public transient:I

.field public final try:[I

.field public volatile:I

.field public final while:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/brotli/dec/class;->do:I

    .line 3
    new-instance v1, Lorg/brotli/dec/do;

    invoke-direct {v1}, Lorg/brotli/dec/do;-><init>()V

    iput-object v1, p0, Lorg/brotli/dec/class;->for:Lorg/brotli/dec/do;

    const/16 v1, 0xca8

    new-array v2, v1, [I

    .line 4
    iput-object v2, p0, Lorg/brotli/dec/class;->try:[I

    new-array v1, v1, [I

    .line 5
    iput-object v1, p0, Lorg/brotli/dec/class;->case:[I

    .line 6
    new-instance v1, Lorg/brotli/dec/goto;

    invoke-direct {v1}, Lorg/brotli/dec/goto;-><init>()V

    iput-object v1, p0, Lorg/brotli/dec/class;->catch:Lorg/brotli/dec/goto;

    .line 7
    new-instance v1, Lorg/brotli/dec/goto;

    invoke-direct {v1}, Lorg/brotli/dec/goto;-><init>()V

    iput-object v1, p0, Lorg/brotli/dec/class;->class:Lorg/brotli/dec/goto;

    .line 8
    new-instance v1, Lorg/brotli/dec/goto;

    invoke-direct {v1}, Lorg/brotli/dec/goto;-><init>()V

    iput-object v1, p0, Lorg/brotli/dec/class;->const:Lorg/brotli/dec/goto;

    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 9
    iput-object v2, p0, Lorg/brotli/dec/class;->final:[I

    new-array v1, v1, [I

    .line 10
    iput-object v1, p0, Lorg/brotli/dec/class;->super:[I

    const/4 v1, 0x6

    new-array v1, v1, [I

    .line 11
    iput-object v1, p0, Lorg/brotli/dec/class;->throw:[I

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 12
    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/brotli/dec/class;->while:[I

    .line 13
    iput v0, p0, Lorg/brotli/dec/class;->import:I

    .line 14
    iput v0, p0, Lorg/brotli/dec/class;->native:I

    .line 15
    iput v0, p0, Lorg/brotli/dec/class;->public:I

    .line 16
    iput-boolean v0, p0, Lorg/brotli/dec/class;->return:Z

    .line 17
    iput v0, p0, Lorg/brotli/dec/class;->static:I

    .line 18
    iput v0, p0, Lorg/brotli/dec/class;->d:I

    const-wide/16 v1, 0x0

    .line 19
    iput-wide v1, p0, Lorg/brotli/dec/class;->e:J

    new-array v1, v0, [B

    .line 20
    iput-object v1, p0, Lorg/brotli/dec/class;->f:[B

    .line 21
    iput v0, p0, Lorg/brotli/dec/class;->g:I

    return-void

    nop

    :array_0
    .array-data 4
        0x10
        0xf
        0xb
        0x4
    .end array-data
.end method

.method public static do(Lorg/brotli/dec/class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/brotli/dec/class;->do:I

    if-eqz v0, :cond_1

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iput v1, p0, Lorg/brotli/dec/class;->do:I

    .line 3
    iget-object p0, p0, Lorg/brotli/dec/class;->for:Lorg/brotli/dec/do;

    invoke-static {p0}, Lorg/brotli/dec/do;->if(Lorg/brotli/dec/do;)V

    return-void

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "State MUST be initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static for(Lorg/brotli/dec/class;Ljava/io/InputStream;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/brotli/dec/class;->do:I

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/brotli/dec/class;->for:Lorg/brotli/dec/do;

    invoke-static {v0, p1}, Lorg/brotli/dec/do;->try(Lorg/brotli/dec/do;Ljava/io/InputStream;)V

    .line 3
    iget-object p1, p0, Lorg/brotli/dec/class;->for:Lorg/brotli/dec/do;

    invoke-static {p1}, Lorg/brotli/dec/class;->if(Lorg/brotli/dec/do;)I

    move-result p1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 4
    iput p1, p0, Lorg/brotli/dec/class;->c:I

    add-int/lit8 p1, p1, -0x10

    .line 5
    iput p1, p0, Lorg/brotli/dec/class;->b:I

    .line 6
    iput v0, p0, Lorg/brotli/dec/class;->do:I

    return-void

    .line 7
    :cond_0
    new-instance p0, Lorg/brotli/dec/for;

    const-string p1, "Invalid \'windowBits\' code"

    invoke-direct {p0, p1}, Lorg/brotli/dec/for;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "State MUST be uninitialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static if(Lorg/brotli/dec/do;)I
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lorg/brotli/dec/do;->this(Lorg/brotli/dec/do;I)I

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, 0x10

    return p0

    :cond_0
    const/4 v0, 0x3

    .line 2
    invoke-static {p0, v0}, Lorg/brotli/dec/do;->this(Lorg/brotli/dec/do;I)I

    move-result v1

    const/16 v2, 0x11

    if-eqz v1, :cond_1

    add-int/2addr v1, v2

    return v1

    .line 3
    :cond_1
    invoke-static {p0, v0}, Lorg/brotli/dec/do;->this(Lorg/brotli/dec/do;I)I

    move-result p0

    if-eqz p0, :cond_2

    add-int/lit8 p0, p0, 0x8

    return p0

    :cond_2
    return v2
.end method
