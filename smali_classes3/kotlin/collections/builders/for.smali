.class public final Lkotlin/collections/builders/for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Lkotlin/jvm/internal/markers/KMutableMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/collections/builders/for$new;,
        Lkotlin/collections/builders/for$try;,
        Lkotlin/collections/builders/for$case;,
        Lkotlin/collections/builders/for$if;,
        Lkotlin/collections/builders/for$for;,
        Lkotlin/collections/builders/for$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Lkotlin/jvm/internal/markers/KMutableMap;"
    }
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0010&\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0002\u0008\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u0015\n\u0002\u0008\n\n\u0002\u0010#\n\u0002\u0008\u0003\n\u0002\u0010\u001f\n\u0002\u0008\u0003\n\u0002\u0010\'\n\u0002\u0008\n\u0008\u0000\u0018\u0000 ;*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003:\u0006LPvwxTBG\u0008\u0002\u0012\u000c\u0010Y\u001a\u0008\u0012\u0004\u0012\u00028\u00000\n\u0012\u000e\u0010[\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\n\u0012\u0006\u0010_\u001a\u00020\\\u0012\u0006\u0010a\u001a\u00020\\\u0012\u0006\u0010b\u001a\u00020\u0004\u0012\u0006\u0010c\u001a\u00020\u0004\u00a2\u0006\u0004\u0008r\u0010sB\t\u0008\u0016\u00a2\u0006\u0004\u0008r\u00108B\u0011\u0008\u0016\u0012\u0006\u0010t\u001a\u00020\u0004\u00a2\u0006\u0004\u0008r\u0010uJ\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0004H\u0002J\u0015\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00010\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00028\u0000H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0008\u0010\u0010\u001a\u00020\u0006H\u0002J\u0010\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0004H\u0002J\u0010\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0004H\u0002J\u0017\u0010\u0016\u001a\u00020\u00042\u0006\u0010\r\u001a\u00028\u0000H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u000fJ\u0017\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00028\u0001H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u000fJ\u0010\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0004H\u0002J\u0010\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0004H\u0002J\u0018\u0010\u001f\u001a\u00020\u00142\u000e\u0010\u001e\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u001dH\u0002J\u001c\u0010\"\u001a\u00020\u00142\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010 H\u0002J\"\u0010%\u001a\u00020\u00142\u0018\u0010$\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010 0#H\u0002J\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001dJ\u0008\u0010\'\u001a\u00020\u0014H\u0016J\u0017\u0010(\u001a\u00020\u00142\u0006\u0010\r\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008(\u0010)J\u0017\u0010*\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00028\u0001H\u0016\u00a2\u0006\u0004\u0008*\u0010)J\u001a\u0010+\u001a\u0004\u0018\u00018\u00012\u0006\u0010\r\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0004\u0008+\u0010,J!\u0010-\u001a\u0004\u0018\u00018\u00012\u0006\u0010\r\u001a\u00028\u00002\u0006\u0010\u0017\u001a\u00028\u0001H\u0016\u00a2\u0006\u0004\u0008-\u0010.J\u001e\u0010/\u001a\u00020\u00062\u0014\u0010$\u001a\u0010\u0012\u0006\u0008\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001dH\u0016J\u0019\u00100\u001a\u0004\u0018\u00018\u00012\u0006\u0010\r\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u00080\u0010,J\u0008\u00101\u001a\u00020\u0006H\u0016J\u0013\u00103\u001a\u00020\u00142\u0008\u0010\u001e\u001a\u0004\u0018\u000102H\u0096\u0002J\u0008\u00104\u001a\u00020\u0004H\u0016J\u0008\u00106\u001a\u000205H\u0016J\u000f\u00107\u001a\u00020\u0006H\u0000\u00a2\u0006\u0004\u00087\u00108J\u0017\u00109\u001a\u00020\u00042\u0006\u0010\r\u001a\u00028\u0000H\u0000\u00a2\u0006\u0004\u00089\u0010\u000fJ\u0017\u0010:\u001a\u00020\u00042\u0006\u0010\r\u001a\u00028\u0000H\u0000\u00a2\u0006\u0004\u0008:\u0010\u000fJ#\u0010;\u001a\u00020\u00142\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010 H\u0000\u00a2\u0006\u0004\u0008;\u0010<J\u001b\u0010>\u001a\u00020\u00142\n\u0010=\u001a\u0006\u0012\u0002\u0008\u00030#H\u0000\u00a2\u0006\u0004\u0008>\u0010?J#\u0010@\u001a\u00020\u00142\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010 H\u0000\u00a2\u0006\u0004\u0008@\u0010<J\u0017\u0010B\u001a\u00020\u00142\u0006\u0010A\u001a\u00028\u0001H\u0000\u00a2\u0006\u0004\u0008B\u0010)J\u001b\u0010D\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010CH\u0000\u00a2\u0006\u0004\u0008D\u0010EJ\u001b\u0010G\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010FH\u0000\u00a2\u0006\u0004\u0008G\u0010HJ\u001b\u0010J\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010IH\u0000\u00a2\u0006\u0004\u0008J\u0010KR\u0016\u0010N\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR$\u0010S\u001a\u00020\u00042\u0006\u0010O\u001a\u00020\u00048\u0016@RX\u0096\u000e\u00a2\u0006\u000c\n\u0004\u0008P\u0010M\u001a\u0004\u0008Q\u0010RR\u0016\u0010V\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008T\u0010UR\u001c\u0010Y\u001a\u0008\u0012\u0004\u0012\u00028\u00000\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010XR\u001e\u0010[\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010XR\u0016\u0010_\u001a\u00020\\8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008]\u0010^R\u0016\u0010a\u001a\u00020\\8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010^R\u0016\u0010b\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010MR\u0016\u0010c\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010MR\u0016\u0010\u0008\u001a\u00020\u00048B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008d\u0010RR\u0016\u0010f\u001a\u00020\u00048B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008e\u0010RR\u001c\u0010j\u001a\u0008\u0012\u0004\u0012\u00028\u00000g8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008h\u0010iR\u001c\u0010n\u001a\u0008\u0012\u0004\u0012\u00028\u00010k8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008l\u0010mR(\u0010q\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010o0g8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008p\u0010i\u00a8\u0006y"
    }
    d2 = {
        "Lkotlin/collections/builders/for;",
        "K",
        "V",
        "",
        "",
        "n",
        "Landroid/support/v4/ub2;",
        "public",
        "capacity",
        "native",
        "",
        "class",
        "()[Ljava/lang/Object;",
        "key",
        "abstract",
        "(Ljava/lang/Object;)I",
        "super",
        "newHashSize",
        "protected",
        "i",
        "",
        "interface",
        "static",
        "value",
        "switch",
        "index",
        "synchronized",
        "removedHash",
        "implements",
        "",
        "other",
        "import",
        "",
        "entry",
        "volatile",
        "",
        "from",
        "strictfp",
        "const",
        "isEmpty",
        "containsKey",
        "(Ljava/lang/Object;)Z",
        "containsValue",
        "get",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "put",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "putAll",
        "remove",
        "clear",
        "",
        "equals",
        "hashCode",
        "",
        "toString",
        "final",
        "()V",
        "catch",
        "instanceof",
        "while",
        "(Ljava/util/Map$Entry;)Z",
        "m",
        "throw",
        "(Ljava/util/Collection;)Z",
        "transient",
        "element",
        "a",
        "Lkotlin/collections/builders/for$try;",
        "continue",
        "()Lkotlin/collections/builders/for$try;",
        "Lkotlin/collections/builders/for$case;",
        "b",
        "()Lkotlin/collections/builders/for$case;",
        "Lkotlin/collections/builders/for$if;",
        "return",
        "()Lkotlin/collections/builders/for$if;",
        "do",
        "I",
        "hashShift",
        "<set-?>",
        "if",
        "package",
        "()I",
        "size",
        "case",
        "Z",
        "isReadOnly",
        "else",
        "[Ljava/lang/Object;",
        "keysArray",
        "goto",
        "valuesArray",
        "",
        "this",
        "[I",
        "presenceArray",
        "break",
        "hashArray",
        "maxProbeDistance",
        "length",
        "throws",
        "extends",
        "hashSize",
        "",
        "finally",
        "()Ljava/util/Set;",
        "keys",
        "",
        "private",
        "()Ljava/util/Collection;",
        "values",
        "",
        "default",
        "entries",
        "<init>",
        "([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V",
        "initialCapacity",
        "(I)V",
        "for",
        "new",
        "try",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field private static final const:I = -0x61c88647
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final final:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final super:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final throw:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final while:Lkotlin/collections/builders/for$do;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end field


# instance fields
.field private break:[I

.field private case:Z

.field private catch:I

.field private class:I

.field private do:I

.field private else:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private for:Landroid/support/v4/jx0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/jx0<",
            "TK;>;"
        }
    .end annotation
.end field

.field private goto:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field private if:I

.field private new:Landroid/support/v4/kx0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/kx0<",
            "TV;>;"
        }
    .end annotation
.end field

.field private this:[I

.field private try:Landroid/support/v4/ix0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/ix0<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/collections/builders/for$do;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/collections/builders/for$do;-><init>(Landroid/support/v4/rx;)V

    sput-object v0, Lkotlin/collections/builders/for;->while:Lkotlin/collections/builders/for$do;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x8

    .line 3
    invoke-direct {p0, v0}, Lkotlin/collections/builders/for;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    .line 4
    invoke-static {p1}, Lkotlin/collections/builders/if;->new(I)[Ljava/lang/Object;

    move-result-object v1

    .line 5
    new-array v3, p1, [I

    .line 6
    sget-object v0, Lkotlin/collections/builders/for;->while:Lkotlin/collections/builders/for$do;

    invoke-static {v0, p1}, Lkotlin/collections/builders/for$do;->do(Lkotlin/collections/builders/for$do;I)I

    move-result p1

    new-array v4, p1, [I

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    .line 7
    invoke-direct/range {v0 .. v6}, Lkotlin/collections/builders/for;-><init>([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V

    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;[TV;[I[III)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/collections/builders/for;->else:[Ljava/lang/Object;

    iput-object p2, p0, Lkotlin/collections/builders/for;->goto:[Ljava/lang/Object;

    iput-object p3, p0, Lkotlin/collections/builders/for;->this:[I

    iput-object p4, p0, Lkotlin/collections/builders/for;->break:[I

    iput p5, p0, Lkotlin/collections/builders/for;->catch:I

    iput p6, p0, Lkotlin/collections/builders/for;->class:I

    .line 2
    sget-object p1, Lkotlin/collections/builders/for;->while:Lkotlin/collections/builders/for$do;

    invoke-direct {p0}, Lkotlin/collections/builders/for;->extends()I

    move-result p2

    invoke-static {p1, p2}, Lkotlin/collections/builders/for$do;->if(Lkotlin/collections/builders/for$do;I)I

    move-result p1

    iput p1, p0, Lkotlin/collections/builders/for;->do:I

    return-void
.end method

.method private final abstract(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const v0, -0x61c88647

    mul-int p1, p1, v0

    iget v0, p0, Lkotlin/collections/builders/for;->do:I

    ushr-int/2addr p1, v0

    return p1
.end method

.method public static final synthetic break(Lkotlin/collections/builders/for;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlin/collections/builders/for;->goto:[Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic case(Lkotlin/collections/builders/for;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlin/collections/builders/for;->synchronized(I)V

    return-void
.end method

.method private final class()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/collections/builders/for;->goto:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lkotlin/collections/builders/for;->throws()I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/builders/if;->new(I)[Ljava/lang/Object;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lkotlin/collections/builders/for;->goto:[Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic do(Lkotlin/collections/builders/for;)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/collections/builders/for;->class()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic else(Lkotlin/collections/builders/for;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlin/collections/builders/for;->else:[Ljava/lang/Object;

    return-void
.end method

.method private final extends()I
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/collections/builders/for;->break:[I

    array-length v0, v0

    return v0
.end method

.method public static final synthetic for(Lkotlin/collections/builders/for;)I
    .locals 0

    .line 1
    iget p0, p0, Lkotlin/collections/builders/for;->class:I

    return p0
.end method

.method public static final synthetic goto(Lkotlin/collections/builders/for;I)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/collections/builders/for;->class:I

    return-void
.end method

.method public static final synthetic if(Lkotlin/collections/builders/for;)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/collections/builders/for;->else:[Ljava/lang/Object;

    return-object p0
.end method

.method private final implements(I)V
    .locals 9

    .line 1
    iget v0, p0, Lkotlin/collections/builders/for;->catch:I

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lkotlin/collections/builders/for;->extends()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lkotlin/ranges/new;->return(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v0

    const/4 v3, 0x0

    move v0, p1

    :cond_0
    add-int/lit8 v4, p1, -0x1

    if-nez p1, :cond_1

    .line 2
    invoke-direct {p0}, Lkotlin/collections/builders/for;->extends()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    move p1, v4

    :goto_0
    add-int/lit8 v3, v3, 0x1

    .line 3
    iget v4, p0, Lkotlin/collections/builders/for;->catch:I

    if-le v3, v4, :cond_2

    .line 4
    iget-object p1, p0, Lkotlin/collections/builders/for;->break:[I

    aput v1, p1, v0

    return-void

    .line 5
    :cond_2
    iget-object v4, p0, Lkotlin/collections/builders/for;->break:[I

    aget v5, v4, p1

    if-nez v5, :cond_3

    .line 6
    aput v1, v4, v0

    return-void

    :cond_3
    const/4 v6, -0x1

    if-gez v5, :cond_4

    .line 7
    aput v6, v4, v0

    :goto_1
    move v0, p1

    const/4 v3, 0x0

    goto :goto_2

    .line 8
    :cond_4
    iget-object v4, p0, Lkotlin/collections/builders/for;->else:[Ljava/lang/Object;

    add-int/lit8 v7, v5, -0x1

    aget-object v4, v4, v7

    invoke-direct {p0, v4}, Lkotlin/collections/builders/for;->abstract(Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v4, p1

    .line 9
    invoke-direct {p0}, Lkotlin/collections/builders/for;->extends()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    and-int/2addr v4, v8

    if-lt v4, v3, :cond_5

    .line 10
    iget-object v3, p0, Lkotlin/collections/builders/for;->break:[I

    aput v5, v3, v0

    .line 11
    iget-object v3, p0, Lkotlin/collections/builders/for;->this:[I

    aput v0, v3, v7

    goto :goto_1

    :cond_5
    :goto_2
    add-int/2addr v2, v6

    if-gez v2, :cond_0

    .line 12
    iget-object p1, p0, Lkotlin/collections/builders/for;->break:[I

    aput v6, p1, v0

    return-void
.end method

.method private final import(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/builders/for;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/collections/builders/for;->throw(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final interface(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lkotlin/collections/builders/for;->else:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lkotlin/collections/builders/for;->abstract(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget v1, p0, Lkotlin/collections/builders/for;->catch:I

    .line 3
    :goto_0
    iget-object v2, p0, Lkotlin/collections/builders/for;->break:[I

    aget v3, v2, v0

    const/4 v4, 0x1

    if-nez v3, :cond_0

    add-int/lit8 v1, p1, 0x1

    .line 4
    aput v1, v2, v0

    .line 5
    iget-object v1, p0, Lkotlin/collections/builders/for;->this:[I

    aput v0, v1, p1

    return v4

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    add-int/lit8 v2, v0, -0x1

    if-nez v0, :cond_2

    .line 6
    invoke-direct {p0}, Lkotlin/collections/builders/for;->extends()I

    move-result v0

    sub-int/2addr v0, v4

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private final native(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lkotlin/collections/builders/for;->throws()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 2
    invoke-direct {p0}, Lkotlin/collections/builders/for;->throws()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    .line 3
    :goto_0
    iget-object v0, p0, Lkotlin/collections/builders/for;->else:[Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/collections/builders/if;->try([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lkotlin/collections/builders/for;->else:[Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lkotlin/collections/builders/for;->goto:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Lkotlin/collections/builders/if;->try([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lkotlin/collections/builders/for;->goto:[Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lkotlin/collections/builders/for;->this:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    const-string v1, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lkotlin/collections/builders/for;->this:[I

    .line 6
    sget-object v0, Lkotlin/collections/builders/for;->while:Lkotlin/collections/builders/for$do;

    invoke-static {v0, p1}, Lkotlin/collections/builders/for$do;->do(Lkotlin/collections/builders/for$do;I)I

    move-result p1

    .line 7
    invoke-direct {p0}, Lkotlin/collections/builders/for;->extends()I

    move-result v0

    if-le p1, v0, :cond_3

    invoke-direct {p0, p1}, Lkotlin/collections/builders/for;->protected(I)V

    goto :goto_2

    .line 8
    :cond_2
    iget v0, p0, Lkotlin/collections/builders/for;->class:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lkotlin/collections/builders/for;->size()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-direct {p0}, Lkotlin/collections/builders/for;->throws()I

    move-result p1

    if-le v0, p1, :cond_3

    .line 9
    invoke-direct {p0}, Lkotlin/collections/builders/for;->extends()I

    move-result p1

    invoke-direct {p0, p1}, Lkotlin/collections/builders/for;->protected(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public static final synthetic new(Lkotlin/collections/builders/for;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/collections/builders/for;->this:[I

    return-object p0
.end method

.method private final protected(I)V
    .locals 2

    .line 1
    iget v0, p0, Lkotlin/collections/builders/for;->class:I

    invoke-virtual {p0}, Lkotlin/collections/builders/for;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lkotlin/collections/builders/for;->super()V

    .line 2
    :cond_0
    invoke-direct {p0}, Lkotlin/collections/builders/for;->extends()I

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    .line 3
    new-array v0, p1, [I

    iput-object v0, p0, Lkotlin/collections/builders/for;->break:[I

    .line 4
    sget-object v0, Lkotlin/collections/builders/for;->while:Lkotlin/collections/builders/for$do;

    invoke-static {v0, p1}, Lkotlin/collections/builders/for$do;->if(Lkotlin/collections/builders/for$do;I)I

    move-result p1

    iput p1, p0, Lkotlin/collections/builders/for;->do:I

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lkotlin/collections/builders/for;->break:[I

    invoke-direct {p0}, Lkotlin/collections/builders/for;->extends()I

    move-result v0

    invoke-static {p1, v1, v1, v0}, Lkotlin/collections/goto;->y1([IIII)V

    .line 6
    :goto_0
    iget p1, p0, Lkotlin/collections/builders/for;->class:I

    if-ge v1, p1, :cond_3

    add-int/lit8 p1, v1, 0x1

    .line 7
    invoke-direct {p0, v1}, Lkotlin/collections/builders/for;->interface(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, p1

    goto :goto_0

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method

.method private final public(I)V
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/collections/builders/for;->class:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lkotlin/collections/builders/for;->native(I)V

    return-void
.end method

.method private final static(Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lkotlin/collections/builders/for;->abstract(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget v1, p0, Lkotlin/collections/builders/for;->catch:I

    .line 3
    :goto_0
    iget-object v2, p0, Lkotlin/collections/builders/for;->break:[I

    aget v2, v2, v0

    const/4 v3, -0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    if-lez v2, :cond_1

    .line 4
    iget-object v4, p0, Lkotlin/collections/builders/for;->else:[Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    aget-object v4, v4, v2

    invoke-static {v4, p1}, Lkotlin/jvm/internal/super;->else(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    :cond_1
    add-int/2addr v1, v3

    if-gez v1, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v0, -0x1

    if-nez v0, :cond_3

    .line 5
    invoke-direct {p0}, Lkotlin/collections/builders/for;->extends()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private final strictfp(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lkotlin/collections/builders/for;->public(I)V

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 4
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {p0, v0}, Lkotlin/collections/builders/for;->volatile(Ljava/util/Map$Entry;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private final super()V
    .locals 5

    .line 1
    iget-object v0, p0, Lkotlin/collections/builders/for;->goto:[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget v3, p0, Lkotlin/collections/builders/for;->class:I

    if-ge v1, v3, :cond_2

    .line 3
    iget-object v3, p0, Lkotlin/collections/builders/for;->this:[I

    aget v3, v3, v1

    if-ltz v3, :cond_1

    .line 4
    iget-object v3, p0, Lkotlin/collections/builders/for;->else:[Ljava/lang/Object;

    aget-object v4, v3, v1

    aput-object v4, v3, v2

    if-eqz v0, :cond_0

    .line 5
    aget-object v3, v0, v1

    aput-object v3, v0, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iget-object v1, p0, Lkotlin/collections/builders/for;->else:[Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lkotlin/collections/builders/if;->else([Ljava/lang/Object;II)V

    if-eqz v0, :cond_3

    .line 7
    iget v1, p0, Lkotlin/collections/builders/for;->class:I

    invoke-static {v0, v2, v1}, Lkotlin/collections/builders/if;->else([Ljava/lang/Object;II)V

    .line 8
    :cond_3
    iput v2, p0, Lkotlin/collections/builders/for;->class:I

    return-void
.end method

.method private final switch(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 1
    iget v0, p0, Lkotlin/collections/builders/for;->class:I

    :cond_0
    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lkotlin/collections/builders/for;->this:[I

    aget v1, v1, v0

    if-ltz v1, :cond_0

    iget-object v1, p0, Lkotlin/collections/builders/for;->goto:[Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/super;->const(Ljava/lang/Object;)V

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lkotlin/jvm/internal/super;->else(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_1
    return v1
.end method

.method private final synchronized(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlin/collections/builders/for;->else:[Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/collections/builders/if;->case([Ljava/lang/Object;I)V

    .line 2
    iget-object v0, p0, Lkotlin/collections/builders/for;->this:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lkotlin/collections/builders/for;->implements(I)V

    .line 3
    iget-object v0, p0, Lkotlin/collections/builders/for;->this:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    .line 4
    invoke-virtual {p0}, Lkotlin/collections/builders/for;->size()I

    move-result p1

    add-int/2addr p1, v1

    iput p1, p0, Lkotlin/collections/builders/for;->if:I

    return-void
.end method

.method public static final synthetic this(Lkotlin/collections/builders/for;[I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlin/collections/builders/for;->this:[I

    return-void
.end method

.method private final throws()I
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/collections/builders/for;->else:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public static final synthetic try(Lkotlin/collections/builders/for;)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/collections/builders/for;->goto:[Ljava/lang/Object;

    return-object p0
.end method

.method private final volatile(Ljava/util/Map$Entry;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlin/collections/builders/for;->catch(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-direct {p0}, Lkotlin/collections/builders/for;->class()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v0

    return v2

    :cond_0
    neg-int v0, v0

    sub-int/2addr v0, v2

    .line 4
    aget-object v3, v1, v0

    .line 5
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/super;->else(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_1

    .line 6
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v0

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/builders/for;->final()V

    .line 2
    invoke-direct {p0, p1}, Lkotlin/collections/builders/for;->switch(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lkotlin/collections/builders/for;->synchronized(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final b()Lkotlin/collections/builders/for$case;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/builders/for$case<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/collections/builders/for$case;

    invoke-direct {v0, p0}, Lkotlin/collections/builders/for$case;-><init>(Lkotlin/collections/builders/for;)V

    return-object v0
.end method

.method public final catch(Ljava/lang/Object;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/builders/for;->final()V

    .line 2
    :goto_0
    invoke-direct {p0, p1}, Lkotlin/collections/builders/for;->abstract(Ljava/lang/Object;)I

    move-result v0

    .line 3
    iget v1, p0, Lkotlin/collections/builders/for;->catch:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0}, Lkotlin/collections/builders/for;->extends()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lkotlin/ranges/new;->return(II)I

    move-result v1

    const/4 v2, 0x0

    .line 4
    :goto_1
    iget-object v3, p0, Lkotlin/collections/builders/for;->break:[I

    aget v3, v3, v0

    const/4 v4, 0x1

    if-gtz v3, :cond_2

    .line 5
    iget v1, p0, Lkotlin/collections/builders/for;->class:I

    invoke-direct {p0}, Lkotlin/collections/builders/for;->throws()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 6
    invoke-direct {p0, v4}, Lkotlin/collections/builders/for;->public(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget v1, p0, Lkotlin/collections/builders/for;->class:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lkotlin/collections/builders/for;->class:I

    .line 8
    iget-object v5, p0, Lkotlin/collections/builders/for;->else:[Ljava/lang/Object;

    aput-object p1, v5, v1

    .line 9
    iget-object p1, p0, Lkotlin/collections/builders/for;->this:[I

    aput v0, p1, v1

    .line 10
    iget-object p1, p0, Lkotlin/collections/builders/for;->break:[I

    aput v3, p1, v0

    .line 11
    invoke-virtual {p0}, Lkotlin/collections/builders/for;->size()I

    move-result p1

    add-int/2addr p1, v4

    iput p1, p0, Lkotlin/collections/builders/for;->if:I

    .line 12
    iget p1, p0, Lkotlin/collections/builders/for;->catch:I

    if-le v2, p1, :cond_1

    iput v2, p0, Lkotlin/collections/builders/for;->catch:I

    :cond_1
    return v1

    .line 13
    :cond_2
    iget-object v5, p0, Lkotlin/collections/builders/for;->else:[Ljava/lang/Object;

    add-int/lit8 v6, v3, -0x1

    aget-object v5, v5, v6

    invoke-static {v5, p1}, Lkotlin/jvm/internal/super;->else(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    neg-int p1, v3

    return p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    if-le v2, v1, :cond_4

    .line 14
    invoke-direct {p0}, Lkotlin/collections/builders/for;->extends()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/collections/builders/for;->protected(I)V

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v0, -0x1

    if-nez v0, :cond_5

    .line 15
    invoke-direct {p0}, Lkotlin/collections/builders/for;->extends()I

    move-result v0

    sub-int/2addr v0, v4

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_1
.end method

.method public clear()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/builders/for;->final()V

    .line 2
    iget v0, p0, Lkotlin/collections/builders/for;->class:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lkotlin/collections/builders/for;->this:[I

    aget v4, v3, v2

    if-ltz v4, :cond_0

    .line 4
    iget-object v5, p0, Lkotlin/collections/builders/for;->break:[I

    aput v1, v5, v4

    const/4 v4, -0x1

    .line 5
    aput v4, v3, v2

    :cond_0
    if-eq v2, v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lkotlin/collections/builders/for;->else:[Ljava/lang/Object;

    iget v2, p0, Lkotlin/collections/builders/for;->class:I

    invoke-static {v0, v1, v2}, Lkotlin/collections/builders/if;->else([Ljava/lang/Object;II)V

    .line 7
    iget-object v0, p0, Lkotlin/collections/builders/for;->goto:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget v2, p0, Lkotlin/collections/builders/for;->class:I

    invoke-static {v0, v1, v2}, Lkotlin/collections/builders/if;->else([Ljava/lang/Object;II)V

    .line 8
    :cond_2
    iput v1, p0, Lkotlin/collections/builders/for;->if:I

    .line 9
    iput v1, p0, Lkotlin/collections/builders/for;->class:I

    return-void
.end method

.method public final const()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/builders/for;->final()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lkotlin/collections/builders/for;->case:Z

    return-object p0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlin/collections/builders/for;->static(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlin/collections/builders/for;->switch(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final continue()Lkotlin/collections/builders/for$try;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/builders/for$try<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/collections/builders/for$try;

    invoke-direct {v0, p0}, Lkotlin/collections/builders/for$try;-><init>(Lkotlin/collections/builders/for;)V

    return-object v0
.end method

.method public default()Ljava/util/Set;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/collections/builders/for;->try:Landroid/support/v4/ix0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/ix0;

    invoke-direct {v0, p0}, Landroid/support/v4/ix0;-><init>(Lkotlin/collections/builders/for;)V

    .line 3
    iput-object v0, p0, Lkotlin/collections/builders/for;->try:Landroid/support/v4/ix0;

    :cond_0
    return-object v0
.end method

.method public final bridge entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/builders/for;->default()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/v4/z41;
        .end annotation
    .end param

    if-eq p1, p0, :cond_1

    .line 1
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lkotlin/collections/builders/for;->import(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final final()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlin/collections/builders/for;->case:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public finally()Ljava/util/Set;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/collections/builders/for;->for:Landroid/support/v4/jx0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/jx0;

    invoke-direct {v0, p0}, Landroid/support/v4/jx0;-><init>(Lkotlin/collections/builders/for;)V

    .line 3
    iput-object v0, p0, Lkotlin/collections/builders/for;->for:Landroid/support/v4/jx0;

    :cond_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/v4/z41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lkotlin/collections/builders/for;->static(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlin/collections/builders/for;->goto:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/super;->const(Ljava/lang/Object;)V

    aget-object p1, v0, p1

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/builders/for;->return()Lkotlin/collections/builders/for$if;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0}, Lkotlin/collections/builders/for$new;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0}, Lkotlin/collections/builders/for$if;->this()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final instanceof(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/builders/for;->final()V

    .line 2
    invoke-direct {p0, p1}, Lkotlin/collections/builders/for;->static(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lkotlin/collections/builders/for;->synchronized(I)V

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/builders/for;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final bridge keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/builders/for;->finally()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public package()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/collections/builders/for;->if:I

    return v0
.end method

.method public private()Ljava/util/Collection;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/collections/builders/for;->new:Landroid/support/v4/kx0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/kx0;

    invoke-direct {v0, p0}, Landroid/support/v4/kx0;-><init>(Lkotlin/collections/builders/for;)V

    .line 3
    iput-object v0, p0, Lkotlin/collections/builders/for;->new:Landroid/support/v4/kx0;

    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/support/v4/z41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/builders/for;->final()V

    .line 2
    invoke-virtual {p0, p1}, Lkotlin/collections/builders/for;->catch(Ljava/lang/Object;)I

    move-result p1

    .line 3
    invoke-direct {p0}, Lkotlin/collections/builders/for;->class()[Ljava/lang/Object;

    move-result-object v0

    if-gez p1, :cond_0

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    .line 4
    aget-object v1, v0, p1

    .line 5
    aput-object p2, v0, p1

    return-object v1

    .line 6
    :cond_0
    aput-object p2, v0, p1

    const/4 p1, 0x0

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/builders/for;->final()V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/collections/builders/for;->strictfp(Ljava/util/Collection;)Z

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/support/v4/z41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/collections/builders/for;->instanceof(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlin/collections/builders/for;->goto:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/super;->const(Ljava/lang/Object;)V

    .line 3
    aget-object v1, v0, p1

    .line 4
    invoke-static {v0, p1}, Lkotlin/collections/builders/if;->case([Ljava/lang/Object;I)V

    return-object v1
.end method

.method public final return()Lkotlin/collections/builders/for$if;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/builders/for$if<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/collections/builders/for$if;

    invoke-direct {v0, p0}, Lkotlin/collections/builders/for$if;-><init>(Lkotlin/collections/builders/for;)V

    return-object v0
.end method

.method public final bridge size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/builders/for;->package()I

    move-result v0

    return v0
.end method

.method public final throw(Ljava/util/Collection;)Z
    .locals 2
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Lkotlin/collections/builders/for;->while(Ljava/util/Map$Entry;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    nop

    :catch_0
    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/collections/builders/for;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "{"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lkotlin/collections/builders/for;->return()Lkotlin/collections/builders/for$if;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {v1}, Lkotlin/collections/builders/for$new;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    if-lez v2, :cond_0

    const-string v3, ", "

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-virtual {v1, v0}, Lkotlin/collections/builders/for$if;->goto(Ljava/lang/StringBuilder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "}"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sb.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final transient(Ljava/util/Map$Entry;)Z
    .locals 3
    .param p1    # Ljava/util/Map$Entry;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/builders/for;->final()V

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlin/collections/builders/for;->static(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v2, p0, Lkotlin/collections/builders/for;->goto:[Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/super;->const(Ljava/lang/Object;)V

    aget-object v2, v2, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/super;->else(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-direct {p0, v0}, Lkotlin/collections/builders/for;->synchronized(I)V

    return v2
.end method

.method public final bridge values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/builders/for;->private()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final while(Ljava/util/Map$Entry;)Z
    .locals 2
    .param p1    # Ljava/util/Map$Entry;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlin/collections/builders/for;->static(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v1, p0, Lkotlin/collections/builders/for;->goto:[Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/super;->const(Ljava/lang/Object;)V

    aget-object v0, v1, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/super;->else(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
