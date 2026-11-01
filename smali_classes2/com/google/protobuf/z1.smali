.class final Lcom/google/protobuf/z1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/z1$if;,
        Lcom/google/protobuf/z1$for;,
        Lcom/google/protobuf/z1$new;,
        Lcom/google/protobuf/z1$try;
    }
.end annotation


# static fields
.field private static final break:J

.field private static final case:Lcom/google/protobuf/z1$try;

.field private static final catch:J

.field private static final class:J

.field private static final const:J

.field private static final default:I

.field private static final do:Ljava/util/logging/Logger;

.field private static final else:Z

.field public static final extends:Z

.field private static final final:J

.field private static final for:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final goto:Z

.field private static final if:Lsun/misc/Unsafe;

.field private static final import:J

.field private static final native:J

.field private static final new:Z

.field private static final public:J

.field private static final return:J

.field private static final static:J

.field private static final super:J

.field private static final switch:I = 0x8

.field public static final this:J

.field private static final throw:J

.field private static final throws:I = 0x7

.field private static final try:Z

.field private static final while:J


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    const-class v0, [Ljava/lang/Object;

    const-class v1, [D

    const-class v2, [F

    const-class v3, [J

    const-class v4, [I

    const-class v5, [Z

    const-class v6, Lcom/google/protobuf/z1;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sput-object v6, Lcom/google/protobuf/z1;->do:Ljava/util/logging/Logger;

    .line 2
    invoke-static {}, Lcom/google/protobuf/z1;->e()Lsun/misc/Unsafe;

    move-result-object v6

    sput-object v6, Lcom/google/protobuf/z1;->if:Lsun/misc/Unsafe;

    .line 3
    invoke-static {}, Lcom/google/protobuf/new;->if()Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lcom/google/protobuf/z1;->for:Ljava/lang/Class;

    .line 4
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Lcom/google/protobuf/z1;->while(Ljava/lang/Class;)Z

    move-result v6

    sput-boolean v6, Lcom/google/protobuf/z1;->new:Z

    .line 5
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Lcom/google/protobuf/z1;->while(Ljava/lang/Class;)Z

    move-result v6

    sput-boolean v6, Lcom/google/protobuf/z1;->try:Z

    .line 6
    invoke-static {}, Lcom/google/protobuf/z1;->a()Lcom/google/protobuf/z1$try;

    move-result-object v6

    sput-object v6, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    .line 7
    invoke-static {}, Lcom/google/protobuf/z1;->G()Z

    move-result v6

    sput-boolean v6, Lcom/google/protobuf/z1;->else:Z

    .line 8
    invoke-static {}, Lcom/google/protobuf/z1;->F()Z

    move-result v6

    sput-boolean v6, Lcom/google/protobuf/z1;->goto:Z

    .line 9
    const-class v6, [B

    invoke-static {v6}, Lcom/google/protobuf/z1;->catch(Ljava/lang/Class;)I

    move-result v6

    int-to-long v6, v6

    sput-wide v6, Lcom/google/protobuf/z1;->this:J

    .line 10
    invoke-static {v5}, Lcom/google/protobuf/z1;->catch(Ljava/lang/Class;)I

    move-result v8

    int-to-long v8, v8

    sput-wide v8, Lcom/google/protobuf/z1;->break:J

    .line 11
    invoke-static {v5}, Lcom/google/protobuf/z1;->class(Ljava/lang/Class;)I

    move-result v5

    int-to-long v8, v5

    sput-wide v8, Lcom/google/protobuf/z1;->catch:J

    .line 12
    invoke-static {v4}, Lcom/google/protobuf/z1;->catch(Ljava/lang/Class;)I

    move-result v5

    int-to-long v8, v5

    sput-wide v8, Lcom/google/protobuf/z1;->class:J

    .line 13
    invoke-static {v4}, Lcom/google/protobuf/z1;->class(Ljava/lang/Class;)I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lcom/google/protobuf/z1;->const:J

    .line 14
    invoke-static {v3}, Lcom/google/protobuf/z1;->catch(Ljava/lang/Class;)I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lcom/google/protobuf/z1;->final:J

    .line 15
    invoke-static {v3}, Lcom/google/protobuf/z1;->class(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lcom/google/protobuf/z1;->super:J

    .line 16
    invoke-static {v2}, Lcom/google/protobuf/z1;->catch(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lcom/google/protobuf/z1;->throw:J

    .line 17
    invoke-static {v2}, Lcom/google/protobuf/z1;->class(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lcom/google/protobuf/z1;->while:J

    .line 18
    invoke-static {v1}, Lcom/google/protobuf/z1;->catch(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lcom/google/protobuf/z1;->import:J

    .line 19
    invoke-static {v1}, Lcom/google/protobuf/z1;->class(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/google/protobuf/z1;->native:J

    .line 20
    invoke-static {v0}, Lcom/google/protobuf/z1;->catch(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/google/protobuf/z1;->public:J

    .line 21
    invoke-static {v0}, Lcom/google/protobuf/z1;->class(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/protobuf/z1;->return:J

    .line 22
    invoke-static {}, Lcom/google/protobuf/z1;->const()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z1;->native(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/protobuf/z1;->static:J

    const-wide/16 v0, 0x7

    and-long/2addr v0, v6

    long-to-int v1, v0

    .line 23
    sput v1, Lcom/google/protobuf/z1;->default:I

    .line 24
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/protobuf/z1;->extends:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(JJ)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/z1$try;->throws(JJ)V

    return-void
.end method

.method public static B(Ljava/lang/Object;JJ)V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/z1$try;->default(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public static C([JJJ)V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    sget-wide v1, Lcom/google/protobuf/z1;->final:J

    sget-wide v3, Lcom/google/protobuf/z1;->super:J

    mul-long p1, p1, v3

    add-long/2addr p1, v1

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/z1$try;->default(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public static D(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/z1$try;->extends(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public static E([Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    sget-wide v1, Lcom/google/protobuf/z1;->public:J

    sget-wide v3, Lcom/google/protobuf/z1;->return:J

    mul-long p1, p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/protobuf/z1$try;->extends(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private static F()Z
    .locals 10

    .line 1
    const-class v0, Ljava/lang/Object;

    sget-object v1, Lcom/google/protobuf/z1;->if:Lsun/misc/Unsafe;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "objectFieldOffset"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    .line 3
    const-class v6, Ljava/lang/reflect/Field;

    aput-object v6, v5, v2

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "arrayBaseOffset"

    new-array v5, v4, [Ljava/lang/Class;

    .line 4
    const-class v6, Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "arrayIndexScale"

    new-array v5, v4, [Ljava/lang/Class;

    .line 5
    const-class v6, Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "getInt"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v0, v6, v2

    .line 6
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putInt"

    const/4 v6, 0x3

    new-array v8, v6, [Ljava/lang/Class;

    aput-object v0, v8, v2

    aput-object v7, v8, v4

    .line 7
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "getLong"

    new-array v8, v5, [Ljava/lang/Class;

    aput-object v0, v8, v2

    aput-object v7, v8, v4

    .line 8
    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putLong"

    new-array v8, v6, [Ljava/lang/Class;

    aput-object v0, v8, v2

    aput-object v7, v8, v4

    aput-object v7, v8, v5

    .line 9
    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "getObject"

    new-array v8, v5, [Ljava/lang/Class;

    aput-object v0, v8, v2

    aput-object v7, v8, v4

    .line 10
    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putObject"

    new-array v8, v6, [Ljava/lang/Class;

    aput-object v0, v8, v2

    aput-object v7, v8, v4

    aput-object v0, v8, v5

    .line 11
    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 12
    invoke-static {}, Lcom/google/protobuf/new;->for()Z

    move-result v3

    if-eqz v3, :cond_1

    return v4

    :cond_1
    const-string v3, "getByte"

    new-array v8, v5, [Ljava/lang/Class;

    aput-object v0, v8, v2

    aput-object v7, v8, v4

    .line 13
    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putByte"

    new-array v8, v6, [Ljava/lang/Class;

    aput-object v0, v8, v2

    aput-object v7, v8, v4

    .line 14
    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "getBoolean"

    new-array v8, v5, [Ljava/lang/Class;

    aput-object v0, v8, v2

    aput-object v7, v8, v4

    .line 15
    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putBoolean"

    new-array v8, v6, [Ljava/lang/Class;

    aput-object v0, v8, v2

    aput-object v7, v8, v4

    .line 16
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "getFloat"

    new-array v8, v5, [Ljava/lang/Class;

    aput-object v0, v8, v2

    aput-object v7, v8, v4

    .line 17
    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putFloat"

    new-array v8, v6, [Ljava/lang/Class;

    aput-object v0, v8, v2

    aput-object v7, v8, v4

    .line 18
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "getDouble"

    new-array v8, v5, [Ljava/lang/Class;

    aput-object v0, v8, v2

    aput-object v7, v8, v4

    .line 19
    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putDouble"

    new-array v6, v6, [Ljava/lang/Class;

    aput-object v0, v6, v2

    aput-object v7, v6, v4

    .line 20
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v0, v6, v5

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v4

    :catchall_0
    move-exception v0

    .line 21
    sget-object v1, Lcom/google/protobuf/z1;->do:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x47

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return v2
.end method

.method private static G()Z
    .locals 11

    const-string v0, "copyMemory"

    const-string v1, "getLong"

    .line 1
    const-class v2, Ljava/lang/Object;

    sget-object v3, Lcom/google/protobuf/z1;->if:Lsun/misc/Unsafe;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "objectFieldOffset"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    .line 3
    const-class v8, Ljava/lang/reflect/Field;

    aput-object v8, v7, v4

    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/Class;

    aput-object v2, v7, v4

    .line 4
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    invoke-virtual {v3, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 5
    invoke-static {}, Lcom/google/protobuf/z1;->const()Ljava/lang/reflect/Field;

    move-result-object v7

    if-nez v7, :cond_1

    return v4

    .line 6
    :cond_1
    invoke-static {}, Lcom/google/protobuf/new;->for()Z

    move-result v7

    if-eqz v7, :cond_2

    return v6

    :cond_2
    const-string v7, "getByte"

    new-array v9, v6, [Ljava/lang/Class;

    aput-object v8, v9, v4

    .line 7
    invoke-virtual {v3, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v7, "putByte"

    new-array v9, v5, [Ljava/lang/Class;

    aput-object v8, v9, v4

    .line 8
    sget-object v10, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v6

    invoke-virtual {v3, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v7, "getInt"

    new-array v9, v6, [Ljava/lang/Class;

    aput-object v8, v9, v4

    .line 9
    invoke-virtual {v3, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v7, "putInt"

    new-array v9, v5, [Ljava/lang/Class;

    aput-object v8, v9, v4

    .line 10
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v6

    invoke-virtual {v3, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v8, v7, v4

    .line 11
    invoke-virtual {v3, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "putLong"

    new-array v7, v5, [Ljava/lang/Class;

    aput-object v8, v7, v4

    aput-object v8, v7, v6

    .line 12
    invoke-virtual {v3, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v7, v1, [Ljava/lang/Class;

    aput-object v8, v7, v4

    aput-object v8, v7, v6

    aput-object v8, v7, v5

    .line 13
    invoke-virtual {v3, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    aput-object v2, v7, v4

    aput-object v8, v7, v6

    aput-object v2, v7, v5

    aput-object v8, v7, v1

    const/4 v1, 0x4

    aput-object v8, v7, v1

    .line 14
    invoke-virtual {v3, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v6

    :catchall_0
    move-exception v0

    .line 15
    sget-object v1, Lcom/google/protobuf/z1;->do:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x47

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return v4
.end method

.method private static a()Lcom/google/protobuf/z1$try;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->if:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/protobuf/new;->for()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3
    sget-boolean v2, Lcom/google/protobuf/z1;->new:Z

    if-eqz v2, :cond_1

    .line 4
    new-instance v1, Lcom/google/protobuf/z1$for;

    invoke-direct {v1, v0}, Lcom/google/protobuf/z1$for;-><init>(Lsun/misc/Unsafe;)V

    return-object v1

    .line 5
    :cond_1
    sget-boolean v2, Lcom/google/protobuf/z1;->try:Z

    if-eqz v2, :cond_2

    .line 6
    new-instance v1, Lcom/google/protobuf/z1$if;

    invoke-direct {v1, v0}, Lcom/google/protobuf/z1$if;-><init>(Lsun/misc/Unsafe;)V

    :cond_2
    return-object v1

    .line 7
    :cond_3
    new-instance v1, Lcom/google/protobuf/z1$new;

    invoke-direct {v1, v0}, Lcom/google/protobuf/z1$new;-><init>(Lsun/misc/Unsafe;)V

    return-object v1
.end method

.method public static abstract(Ljava/lang/Object;J)D
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/z1$try;->goto(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static b(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/z1$try;->final(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static break(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/protobuf/z1;->if:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static c([Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    sget-wide v1, Lcom/google/protobuf/z1;->public:J

    sget-wide v3, Lcom/google/protobuf/z1;->return:J

    mul-long p1, p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/protobuf/z1$try;->final(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic case(Ljava/lang/Object;J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/z1;->throws(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method private static catch(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/google/protobuf/z1;->goto:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/z1$try;->do(Ljava/lang/Class;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private static class(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/google/protobuf/z1;->goto:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/z1$try;->if(Ljava/lang/Class;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private static const()Ljava/lang/reflect/Field;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/protobuf/new;->for()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    invoke-static {v0, v1}, Lcom/google/protobuf/z1;->import(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    invoke-static {v0, v1}, Lcom/google/protobuf/z1;->import(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static continue([DJ)D
    .locals 5

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    sget-wide v1, Lcom/google/protobuf/z1;->import:J

    sget-wide v3, Lcom/google/protobuf/z1;->native:J

    mul-long p1, p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/protobuf/z1$try;->goto(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static d(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/z1$try;->super(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static default(J)B
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/z1$try;->case(J)B

    move-result p0

    return p0
.end method

.method public static synthetic do(Ljava/lang/Object;J)B
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/z1;->package(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method public static e()Lsun/misc/Unsafe;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/protobuf/z1$do;

    invoke-direct {v0}, Lcom/google/protobuf/z1$do;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static synthetic else(Ljava/lang/Object;JZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/z1;->m(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public static extends(Ljava/lang/Object;J)B
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/z1$try;->else(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method public static f()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/z1;->goto:Z

    return v0
.end method

.method public static final(J[BJJ)V
    .locals 8

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    move-wide v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/protobuf/z1$try;->for(J[BJJ)V

    return-void
.end method

.method public static finally([BJ)B
    .locals 3

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    sget-wide v1, Lcom/google/protobuf/z1;->this:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/protobuf/z1$try;->else(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method public static synthetic for(Ljava/lang/Object;JB)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/z1;->r(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static g()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/z1;->else:Z

    return v0
.end method

.method public static synthetic goto(Ljava/lang/Object;JZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/z1;->n(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public static h()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/z1;->new:Z

    return v0
.end method

.method public static i([BI[BII)I
    .locals 10

    if-ltz p1, :cond_6

    if-ltz p3, :cond_6

    if-ltz p4, :cond_6

    add-int v0, p1, p4

    .line 1
    array-length v1, p0

    if-gt v0, v1, :cond_6

    add-int v0, p3, p4

    array-length v1, p2

    if-gt v0, v1, :cond_6

    const/4 v0, 0x0

    .line 2
    sget-boolean v1, Lcom/google/protobuf/z1;->goto:Z

    if-eqz v1, :cond_3

    .line 3
    sget v1, Lcom/google/protobuf/z1;->default:I

    add-int/2addr v1, p1

    and-int/lit8 v1, v1, 0x7

    :goto_0
    if-ge v0, p4, :cond_1

    and-int/lit8 v2, v1, 0x7

    if-eqz v2, :cond_1

    add-int v2, p1, v0

    .line 4
    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sub-int v1, p4, v0

    and-int/lit8 v1, v1, -0x8

    add-int/2addr v1, v0

    :goto_1
    if-ge v0, v1, :cond_3

    .line 5
    sget-wide v2, Lcom/google/protobuf/z1;->this:J

    int-to-long v4, p1

    add-long/2addr v4, v2

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-static {p0, v4, v5}, Lcom/google/protobuf/z1;->instanceof(Ljava/lang/Object;J)J

    move-result-wide v4

    int-to-long v8, p3

    add-long/2addr v2, v8

    add-long/2addr v2, v6

    .line 6
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/z1;->instanceof(Ljava/lang/Object;J)J

    move-result-wide v2

    cmp-long v6, v4, v2

    if-eqz v6, :cond_2

    .line 7
    invoke-static {v4, v5, v2, v3}, Lcom/google/protobuf/z1;->public(JJ)I

    move-result p0

    add-int/2addr v0, p0

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_3
    :goto_2
    if-ge v0, p4, :cond_5

    add-int v1, p1, v0

    .line 8
    aget-byte v1, p0, v1

    add-int v2, p3, v0

    aget-byte v2, p2, v2

    if-eq v1, v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/4 p0, -0x1

    return p0

    .line 9
    :cond_6
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static synthetic if(Ljava/lang/Object;J)B
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/z1;->private(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method public static implements(J)J
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/z1$try;->class(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static import(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static instanceof(Ljava/lang/Object;J)J
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/z1$try;->const(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static interface(J)I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/z1$try;->break(J)I

    move-result p0

    return p0
.end method

.method public static j(Ljava/lang/reflect/Field;)J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/z1$try;->throw(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static k(Ljava/lang/Object;JZ)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/z1$try;->while(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public static l([ZJZ)V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    sget-wide v1, Lcom/google/protobuf/z1;->break:J

    sget-wide v3, Lcom/google/protobuf/z1;->catch:J

    mul-long p1, p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/protobuf/z1$try;->while(Ljava/lang/Object;JZ)V

    return-void
.end method

.method private static m(Ljava/lang/Object;JZ)V
    .locals 0

    int-to-byte p3, p3

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/z1;->r(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static n(Ljava/lang/Object;JZ)V
    .locals 0

    int-to-byte p3, p3

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/z1;->s(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static native(Ljava/lang/reflect/Field;)J
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/google/protobuf/z1$try;->throw(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    :goto_1
    return-wide v0
.end method

.method public static synthetic new(Ljava/lang/Object;JB)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/z1;->s(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static o(JB)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/z1$try;->import(JB)V

    return-void
.end method

.method public static p(Ljava/lang/Object;JB)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/z1$try;->native(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static package(Ljava/lang/Object;J)B
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/z1;->protected(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, -0x1

    xor-long/2addr p1, v0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method private static private(Ljava/lang/Object;J)B
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/z1;->protected(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method public static protected(Ljava/lang/Object;J)I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/z1$try;->catch(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method private static public(JJ)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/z1;->extends:Z

    if-eqz v0, :cond_0

    xor-long/2addr p0, p2

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    goto :goto_0

    :cond_0
    xor-long/2addr p0, p2

    .line 3
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p0

    :goto_0
    shr-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public static q([BJB)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    sget-wide v1, Lcom/google/protobuf/z1;->this:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/protobuf/z1$try;->native(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static r(Ljava/lang/Object;JB)V
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/z1;->protected(Ljava/lang/Object;J)I

    move-result v2

    long-to-int p2, p1

    xor-int/lit8 p1, p2, -0x1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    .line 2
    invoke-static {p0, v0, v1, p1}, Lcom/google/protobuf/z1;->y(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static return(Ljava/lang/Object;J)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/z1$try;->try(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method private static s(Ljava/lang/Object;JB)V
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/z1;->protected(Ljava/lang/Object;J)I

    move-result v2

    long-to-int p2, p1

    and-int/lit8 p1, p2, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    .line 2
    invoke-static {p0, v0, v1, p1}, Lcom/google/protobuf/z1;->y(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static static([ZJ)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    sget-wide v1, Lcom/google/protobuf/z1;->break:J

    sget-wide v3, Lcom/google/protobuf/z1;->catch:J

    mul-long p1, p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/protobuf/z1$try;->try(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method public static strictfp(Ljava/lang/Object;J)F
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/z1$try;->this(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method public static super([BJJJ)V
    .locals 8

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/protobuf/z1$try;->new([BJJJ)V

    return-void
.end method

.method private static switch(Ljava/lang/Object;J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/z1;->package(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synchronized([JJ)J
    .locals 5

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    sget-wide v1, Lcom/google/protobuf/z1;->final:J

    sget-wide v3, Lcom/google/protobuf/z1;->super:J

    mul-long p1, p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/protobuf/z1$try;->const(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static t(Ljava/lang/Object;JD)V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/z1$try;->public(Ljava/lang/Object;JD)V

    return-void
.end method

.method public static this(Ljava/nio/ByteBuffer;)J
    .locals 3

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    sget-wide v1, Lcom/google/protobuf/z1;->static:J

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/protobuf/z1$try;->const(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static throw([BJ[BJJ)V
    .locals 0

    long-to-int p2, p1

    long-to-int p1, p4

    long-to-int p4, p6

    .line 1
    invoke-static {p0, p2, p3, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private static throws(Ljava/lang/Object;J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/z1;->private(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static transient([IJ)I
    .locals 5

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    sget-wide v1, Lcom/google/protobuf/z1;->class:J

    sget-wide v3, Lcom/google/protobuf/z1;->const:J

    mul-long p1, p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/protobuf/z1$try;->catch(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static synthetic try(Ljava/lang/Object;J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/z1;->switch(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method public static u([DJD)V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    sget-wide v1, Lcom/google/protobuf/z1;->import:J

    sget-wide v3, Lcom/google/protobuf/z1;->native:J

    mul-long p1, p1, v3

    add-long/2addr p1, v1

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/z1$try;->public(Ljava/lang/Object;JD)V

    return-void
.end method

.method public static v(Ljava/lang/Object;JF)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/z1$try;->return(Ljava/lang/Object;JF)V

    return-void
.end method

.method public static volatile([FJ)F
    .locals 5

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    sget-wide v1, Lcom/google/protobuf/z1;->throw:J

    sget-wide v3, Lcom/google/protobuf/z1;->while:J

    mul-long p1, p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/protobuf/z1$try;->this(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method public static w([FJF)V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    sget-wide v1, Lcom/google/protobuf/z1;->throw:J

    sget-wide v3, Lcom/google/protobuf/z1;->while:J

    mul-long p1, p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/protobuf/z1$try;->return(Ljava/lang/Object;JF)V

    return-void
.end method

.method private static while(Ljava/lang/Class;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    const-class v0, [B

    invoke-static {}, Lcom/google/protobuf/new;->for()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 2
    :cond_0
    :try_start_0
    sget-object v1, Lcom/google/protobuf/z1;->for:Ljava/lang/Class;

    const-string v3, "peekLong"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v2

    .line 3
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeLong"

    const/4 v5, 0x3

    new-array v8, v5, [Ljava/lang/Class;

    aput-object p0, v8, v2

    .line 4
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v7

    aput-object v6, v8, v4

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeInt"

    new-array v8, v5, [Ljava/lang/Class;

    aput-object p0, v8, v2

    .line 5
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v7

    aput-object v6, v8, v4

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekInt"

    new-array v8, v4, [Ljava/lang/Class;

    aput-object p0, v8, v2

    aput-object v6, v8, v7

    .line 6
    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByte"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p0, v6, v2

    .line 7
    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByte"

    new-array v6, v7, [Ljava/lang/Class;

    aput-object p0, v6, v2

    .line 8
    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByteArray"

    const/4 v6, 0x4

    new-array v8, v6, [Ljava/lang/Class;

    aput-object p0, v8, v2

    aput-object v0, v8, v7

    aput-object v9, v8, v4

    aput-object v9, v8, v5

    .line 9
    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByteArray"

    new-array v6, v6, [Ljava/lang/Class;

    aput-object p0, v6, v2

    aput-object v0, v6, v7

    aput-object v9, v6, v4

    aput-object v9, v6, v5

    .line 10
    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v7

    :catchall_0
    return v2
.end method

.method public static x(JI)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/z1$try;->static(JI)V

    return-void
.end method

.method public static y(Ljava/lang/Object;JI)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/z1$try;->switch(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static z([IJI)V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/protobuf/z1;->case:Lcom/google/protobuf/z1$try;

    sget-wide v1, Lcom/google/protobuf/z1;->class:J

    sget-wide v3, Lcom/google/protobuf/z1;->const:J

    mul-long p1, p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/protobuf/z1$try;->switch(Ljava/lang/Object;JI)V

    return-void
.end method
