.class public Landroid/support/v4/f92;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final break:I = 0x5

.field public static final case:I = 0x1

.field public static final catch:I = 0x6

.field public static final class:I = 0x7

.field public static final const:I = 0x8

.field public static final default:Landroid/support/v4/f92;

.field public static final else:I = 0x2

.field public static final final:I = 0x9

.field public static final goto:I = 0x3

.field public static final import:Landroid/support/v4/f92;

.field public static final native:Landroid/support/v4/f92;

.field public static final public:Landroid/support/v4/f92;

.field public static final return:Landroid/support/v4/f92;

.field public static final static:Landroid/support/v4/f92;

.field public static final super:I = 0xa

.field public static final switch:Landroid/support/v4/f92;

.field public static final this:I = 0x4

.field public static final throw:I = 0xb

.field public static final throws:Landroid/support/v4/f92;

.field public static final try:I

.field public static final while:Landroid/support/v4/f92;


# instance fields
.field private final do:I

.field private final for:I

.field private final if:[C

.field private final new:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    invoke-static {}, Landroid/support/v4/f92;->do()V

    new-instance v0, Landroid/support/v4/f92;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x56050000

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/f92;-><init>(I[CII)V

    sput-object v0, Landroid/support/v4/f92;->while:Landroid/support/v4/f92;

    new-instance v0, Landroid/support/v4/f92;

    const v1, 0x5a000501

    invoke-direct {v0, v4, v2, v1, v4}, Landroid/support/v4/f92;-><init>(I[CII)V

    sput-object v0, Landroid/support/v4/f92;->import:Landroid/support/v4/f92;

    new-instance v0, Landroid/support/v4/f92;

    const/4 v1, 0x2

    const v3, 0x43000601

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/f92;-><init>(I[CII)V

    sput-object v0, Landroid/support/v4/f92;->native:Landroid/support/v4/f92;

    new-instance v0, Landroid/support/v4/f92;

    const/4 v1, 0x3

    const v3, 0x42000501

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/f92;-><init>(I[CII)V

    sput-object v0, Landroid/support/v4/f92;->public:Landroid/support/v4/f92;

    new-instance v0, Landroid/support/v4/f92;

    const/4 v1, 0x4

    const v3, 0x53000701

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/f92;-><init>(I[CII)V

    sput-object v0, Landroid/support/v4/f92;->return:Landroid/support/v4/f92;

    new-instance v0, Landroid/support/v4/f92;

    const/4 v1, 0x5

    const v3, 0x49000001

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/f92;-><init>(I[CII)V

    sput-object v0, Landroid/support/v4/f92;->static:Landroid/support/v4/f92;

    new-instance v0, Landroid/support/v4/f92;

    const/4 v1, 0x6

    const v3, 0x46020201

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/f92;-><init>(I[CII)V

    sput-object v0, Landroid/support/v4/f92;->switch:Landroid/support/v4/f92;

    new-instance v0, Landroid/support/v4/f92;

    const/4 v1, 0x7

    const v3, 0x4a010102    # 2113600.5f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/f92;-><init>(I[CII)V

    sput-object v0, Landroid/support/v4/f92;->throws:Landroid/support/v4/f92;

    new-instance v0, Landroid/support/v4/f92;

    const/16 v1, 0x8

    const v3, 0x44030302

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/f92;-><init>(I[CII)V

    sput-object v0, Landroid/support/v4/f92;->default:Landroid/support/v4/f92;

    return-void
.end method

.method private constructor <init>(I[CII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/f92;->do:I

    iput-object p2, p0, Landroid/support/v4/f92;->if:[C

    iput p3, p0, Landroid/support/v4/f92;->for:I

    iput p4, p0, Landroid/support/v4/f92;->new:I

    return-void
.end method

.method public static abstract(Ljava/lang/String;)Landroid/support/v4/f92;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v4/f92;->if([CI)Landroid/support/v4/f92;

    move-result-object p0

    return-object p0
.end method

.method public static case(Ljava/lang/String;)[Landroid/support/v4/f92;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v2, 0x1

    aget-char v2, p0, v2

    const/16 v5, 0x29

    if-ne v2, v5, :cond_2

    new-array v2, v3, [Landroid/support/v4/f92;

    const/4 v3, 0x0

    :goto_1
    aget-char v4, p0, v1

    if-eq v4, v5, :cond_1

    invoke-static {p0, v1}, Landroid/support/v4/f92;->if([CI)Landroid/support/v4/f92;

    move-result-object v4

    aput-object v4, v2, v3

    aget-object v4, v2, v3

    iget v4, v4, Landroid/support/v4/f92;->new:I

    aget-object v6, v2, v3

    iget v6, v6, Landroid/support/v4/f92;->do:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_0

    const/4 v6, 0x2

    goto :goto_2

    :cond_0
    const/4 v6, 0x0

    :goto_2
    add-int/2addr v4, v6

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v2

    :cond_2
    const/16 v5, 0x4c

    if-ne v2, v5, :cond_4

    :goto_3
    add-int/lit8 v2, v4, 0x1

    aget-char v4, p0, v4

    const/16 v5, 0x3b

    if-eq v4, v5, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/16 v5, 0x5b

    if-eq v2, v5, :cond_5

    add-int/lit8 v3, v3, 0x1

    :cond_5
    move v2, v4

    goto :goto_0
.end method

.method public static catch(Ljava/lang/reflect/Constructor;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-static {v0, v2}, Landroid/support/v4/f92;->new(Ljava/lang/StringBuffer;Ljava/lang/Class;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p0, ")V"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static const(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v0, p0}, Landroid/support/v4/f92;->new(Ljava/lang/StringBuffer;Ljava/lang/Class;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static continue(Ljava/lang/reflect/Constructor;)Landroid/support/v4/f92;
    .locals 0

    invoke-static {p0}, Landroid/support/v4/f92;->catch(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/f92;->abstract(Ljava/lang/String;)Landroid/support/v4/f92;

    move-result-object p0

    return-object p0
.end method

.method public static default(Ljava/lang/String;)Landroid/support/v4/f92;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {v0, p0}, Landroid/support/v4/f92;->if([CI)Landroid/support/v4/f92;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic do()V
    .locals 0

    return-void
.end method

.method public static else(Ljava/lang/reflect/Method;)[Landroid/support/v4/f92;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    array-length v0, p0

    new-array v0, v0, [Landroid/support/v4/f92;

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/support/v4/f92;->private(Ljava/lang/Class;)Landroid/support/v4/f92;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static extends(Ljava/lang/reflect/Method;)Landroid/support/v4/f92;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/f92;->private(Ljava/lang/Class;)Landroid/support/v4/f92;

    move-result-object p0

    return-object p0
.end method

.method private for(Ljava/lang/StringBuffer;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/f92;->if:[C

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v4/f92;->for:I

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x18

    int-to-char v0, v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    iget v1, p0, Landroid/support/v4/f92;->do:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    const/16 v0, 0x4c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Landroid/support/v4/f92;->if:[C

    iget v1, p0, Landroid/support/v4/f92;->for:I

    iget v2, p0, Landroid/support/v4/f92;->new:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    const/16 v0, 0x3b

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/support/v4/f92;->for:I

    iget v2, p0, Landroid/support/v4/f92;->new:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :goto_1
    return-void
.end method

.method private static if([CI)Landroid/support/v4/f92;
    .locals 7

    aget-char v0, p0, p1

    const/16 v1, 0x46

    if-eq v0, v1, :cond_a

    const/16 v1, 0x3b

    const/16 v2, 0x4c

    const/4 v3, 0x1

    if-eq v0, v2, :cond_8

    const/16 v4, 0x53

    if-eq v0, v4, :cond_7

    const/16 v4, 0x56

    if-eq v0, v4, :cond_6

    const/16 v4, 0x49

    if-eq v0, v4, :cond_5

    const/16 v4, 0x4a

    if-eq v0, v4, :cond_4

    const/16 v4, 0x5a

    if-eq v0, v4, :cond_3

    const/16 v4, 0x5b

    if-eq v0, v4, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/support/v4/f92;

    const/16 v1, 0xb

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p0, p1, v2}, Landroid/support/v4/f92;-><init>(I[CII)V

    return-object v0

    :pswitch_0
    sget-object p0, Landroid/support/v4/f92;->default:Landroid/support/v4/f92;

    return-object p0

    :pswitch_1
    sget-object p0, Landroid/support/v4/f92;->native:Landroid/support/v4/f92;

    return-object p0

    :pswitch_2
    sget-object p0, Landroid/support/v4/f92;->public:Landroid/support/v4/f92;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    add-int v5, p1, v0

    aget-char v6, p0, v5

    if-ne v6, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-char v4, p0, v5

    if-ne v4, v2, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    add-int v2, p1, v0

    aget-char v2, p0, v2

    if-eq v2, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/support/v4/f92;

    const/16 v2, 0x9

    add-int/2addr v0, v3

    invoke-direct {v1, v2, p0, p1, v0}, Landroid/support/v4/f92;-><init>(I[CII)V

    return-object v1

    :cond_3
    sget-object p0, Landroid/support/v4/f92;->import:Landroid/support/v4/f92;

    return-object p0

    :cond_4
    sget-object p0, Landroid/support/v4/f92;->throws:Landroid/support/v4/f92;

    return-object p0

    :cond_5
    sget-object p0, Landroid/support/v4/f92;->static:Landroid/support/v4/f92;

    return-object p0

    :cond_6
    sget-object p0, Landroid/support/v4/f92;->while:Landroid/support/v4/f92;

    return-object p0

    :cond_7
    sget-object p0, Landroid/support/v4/f92;->return:Landroid/support/v4/f92;

    return-object p0

    :cond_8
    const/4 v0, 0x1

    :goto_2
    add-int v2, p1, v0

    aget-char v2, p0, v2

    if-eq v2, v1, :cond_9

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    new-instance v1, Landroid/support/v4/f92;

    const/16 v2, 0xa

    add-int/2addr p1, v3

    sub-int/2addr v0, v3

    invoke-direct {v1, v2, p0, p1, v0}, Landroid/support/v4/f92;-><init>(I[CII)V

    return-object v1

    :cond_a
    sget-object p0, Landroid/support/v4/f92;->switch:Landroid/support/v4/f92;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static varargs import(Landroid/support/v4/f92;[Landroid/support/v4/f92;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-direct {v2, v0}, Landroid/support/v4/f92;->for(Ljava/lang/StringBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-direct {p0, v0}, Landroid/support/v4/f92;->for(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static native(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-static {v1, v3}, Landroid/support/v4/f92;->new(Ljava/lang/StringBuffer;Ljava/lang/Class;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/support/v4/f92;->new(Ljava/lang/StringBuffer;Ljava/lang/Class;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static new(Ljava/lang/StringBuffer;Ljava/lang/Class;)V
    .locals 4

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    const/16 p1, 0x49

    goto :goto_1

    :cond_0
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    const/16 p1, 0x56

    goto :goto_1

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    const/16 p1, 0x5a

    goto :goto_1

    :cond_2
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    const/16 p1, 0x42

    goto :goto_1

    :cond_3
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    const/16 p1, 0x43

    goto :goto_1

    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    const/16 p1, 0x53

    goto :goto_1

    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    const/16 p1, 0x44

    goto :goto_1

    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    const/16 p1, 0x46

    goto :goto_1

    :cond_7
    const/16 p1, 0x4a

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_9
    const/16 v0, 0x4c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_b

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_a

    const/16 v2, 0x2f

    :cond_a
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    const/16 p1, 0x3b

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static private(Ljava/lang/Class;)Landroid/support/v4/f92;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    sget-object p0, Landroid/support/v4/f92;->static:Landroid/support/v4/f92;

    return-object p0

    :cond_0
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    sget-object p0, Landroid/support/v4/f92;->while:Landroid/support/v4/f92;

    return-object p0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    sget-object p0, Landroid/support/v4/f92;->import:Landroid/support/v4/f92;

    return-object p0

    :cond_2
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    sget-object p0, Landroid/support/v4/f92;->public:Landroid/support/v4/f92;

    return-object p0

    :cond_3
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    sget-object p0, Landroid/support/v4/f92;->native:Landroid/support/v4/f92;

    return-object p0

    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    sget-object p0, Landroid/support/v4/f92;->return:Landroid/support/v4/f92;

    return-object p0

    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    sget-object p0, Landroid/support/v4/f92;->default:Landroid/support/v4/f92;

    return-object p0

    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    sget-object p0, Landroid/support/v4/f92;->switch:Landroid/support/v4/f92;

    return-object p0

    :cond_7
    sget-object p0, Landroid/support/v4/f92;->throws:Landroid/support/v4/f92;

    return-object p0

    :cond_8
    invoke-static {p0}, Landroid/support/v4/f92;->const(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/f92;->abstract(Ljava/lang/String;)Landroid/support/v4/f92;

    move-result-object p0

    return-object p0
.end method

.method public static varargs public(Landroid/support/v4/f92;[Landroid/support/v4/f92;)Landroid/support/v4/f92;
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v4/f92;->import(Landroid/support/v4/f92;[Landroid/support/v4/f92;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/f92;->abstract(Ljava/lang/String;)Landroid/support/v4/f92;

    move-result-object p0

    return-object p0
.end method

.method public static return(Ljava/lang/String;)Landroid/support/v4/f92;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v4/f92;->if([CI)Landroid/support/v4/f92;

    move-result-object p0

    return-object p0
.end method

.method public static static(Ljava/lang/String;)Landroid/support/v4/f92;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    new-instance v0, Landroid/support/v4/f92;

    const/4 v1, 0x0

    aget-char v2, p0, v1

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    const/16 v2, 0x9

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    :goto_0
    array-length v3, p0

    invoke-direct {v0, v2, p0, v1, v3}, Landroid/support/v4/f92;-><init>(I[CII)V

    return-object v0
.end method

.method public static strictfp(Ljava/lang/reflect/Method;)Landroid/support/v4/f92;
    .locals 0

    invoke-static {p0}, Landroid/support/v4/f92;->native(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/f92;->abstract(Ljava/lang/String;)Landroid/support/v4/f92;

    move-result-object p0

    return-object p0
.end method

.method public static this(Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x29

    const/16 v5, 0x4a

    const/16 v6, 0x44

    if-ne v1, v4, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/4 v1, 0x2

    shl-int/2addr v2, v1

    const/16 v3, 0x56

    if-ne p0, v3, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    if-eq p0, v6, :cond_1

    if-ne p0, v5, :cond_2

    :cond_1
    const/4 v0, 0x2

    :cond_2
    :goto_1
    or-int p0, v2, v0

    return p0

    :cond_3
    const/16 v4, 0x4c

    if-ne v1, v4, :cond_5

    :goto_2
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/16 v4, 0x5b

    if-ne v1, v4, :cond_8

    :goto_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    if-eq v1, v6, :cond_7

    if-ne v1, v5, :cond_b

    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_8
    if-eq v1, v6, :cond_a

    if-ne v1, v5, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    :goto_4
    add-int/lit8 v2, v2, 0x2

    :cond_b
    :goto_5
    move v1, v3

    goto :goto_0
.end method

.method public static while(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public break()Ljava/lang/String;
    .locals 4

    iget v0, p0, Landroid/support/v4/f92;->do:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v4/f92;->if:[C

    iget v2, p0, Landroid/support/v4/f92;->for:I

    iget v3, p0, Landroid/support/v4/f92;->new:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/support/v4/f92;->super()Landroid/support/v4/f92;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/f92;->break()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/f92;->final()I

    move-result v1

    :goto_0
    if-lez v1, :cond_0

    const-string v2, "[]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    const-string v0, "double"

    return-object v0

    :pswitch_3
    const-string v0, "long"

    return-object v0

    :pswitch_4
    const-string v0, "float"

    return-object v0

    :pswitch_5
    const-string v0, "int"

    return-object v0

    :pswitch_6
    const-string v0, "short"

    return-object v0

    :pswitch_7
    const-string v0, "byte"

    return-object v0

    :pswitch_8
    const-string v0, "char"

    return-object v0

    :pswitch_9
    const-string v0, "boolean"

    return-object v0

    :pswitch_a
    const-string v0, "void"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public class()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v0}, Landroid/support/v4/f92;->for(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/support/v4/f92;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/support/v4/f92;

    iget v1, p0, Landroid/support/v4/f92;->do:I

    iget v3, p1, Landroid/support/v4/f92;->do:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    const/16 v3, 0x9

    if-lt v1, v3, :cond_5

    iget v1, p0, Landroid/support/v4/f92;->new:I

    iget v3, p1, Landroid/support/v4/f92;->new:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v3, p0, Landroid/support/v4/f92;->for:I

    iget v4, p1, Landroid/support/v4/f92;->for:I

    add-int/2addr v1, v3

    :goto_0
    if-ge v3, v1, :cond_5

    iget-object v5, p0, Landroid/support/v4/f92;->if:[C

    aget-char v5, v5, v3

    iget-object v6, p1, Landroid/support/v4/f92;->if:[C

    aget-char v6, v6, v4

    if-eq v5, v6, :cond_4

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public final()I
    .locals 3

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Landroid/support/v4/f92;->if:[C

    iget v2, p0, Landroid/support/v4/f92;->for:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public finally()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/f92;->if:[C

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v4/f92;->for:I

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public goto()I
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/f92;->class()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/f92;->this(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Landroid/support/v4/f92;->do:I

    mul-int/lit8 v1, v0, 0xd

    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    iget v0, p0, Landroid/support/v4/f92;->for:I

    iget v2, p0, Landroid/support/v4/f92;->new:I

    add-int/2addr v2, v0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Landroid/support/v4/f92;->if:[C

    aget-char v3, v3, v0

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x11

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public package()I
    .locals 1

    iget v0, p0, Landroid/support/v4/f92;->do:I

    return v0
.end method

.method public super()Landroid/support/v4/f92;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/f92;->if:[C

    iget v1, p0, Landroid/support/v4/f92;->for:I

    invoke-virtual {p0}, Landroid/support/v4/f92;->final()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/f92;->if([CI)Landroid/support/v4/f92;

    move-result-object v0

    return-object v0
.end method

.method public switch(I)I
    .locals 2

    const/4 v0, 0x4

    const/16 v1, 0x2e

    if-eq p1, v1, :cond_2

    const/16 v1, 0x4f

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/v4/f92;->if:[C

    if-nez v1, :cond_1

    iget v0, p0, Landroid/support/v4/f92;->for:I

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x10

    :cond_1
    add-int/2addr p1, v0

    return p1

    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/support/v4/f92;->if:[C

    if-nez v1, :cond_3

    iget v0, p0, Landroid/support/v4/f92;->for:I

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    :cond_3
    add-int/2addr p1, v0

    return p1
.end method

.method public throw()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v4/f92;->if:[C

    iget v2, p0, Landroid/support/v4/f92;->for:I

    iget v3, p0, Landroid/support/v4/f92;->new:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public throws()Landroid/support/v4/f92;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/f92;->class()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/f92;->default(Ljava/lang/String;)Landroid/support/v4/f92;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/f92;->class()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try()[Landroid/support/v4/f92;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/f92;->class()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/f92;->case(Ljava/lang/String;)[Landroid/support/v4/f92;

    move-result-object v0

    return-object v0
.end method
