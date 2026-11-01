.class abstract enum Lcom/google/common/hash/LittleEndianByteArray$for;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/LittleEndianByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/hash/LittleEndianByteArray$for;",
        ">;",
        "Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;"
    }
.end annotation


# static fields
.field public static final enum UNSAFE_BIG_ENDIAN:Lcom/google/common/hash/LittleEndianByteArray$for;

.field public static final enum UNSAFE_LITTLE_ENDIAN:Lcom/google/common/hash/LittleEndianByteArray$for;

.field private static final do:Lsun/misc/Unsafe;

.field private static final synthetic for:[Lcom/google/common/hash/LittleEndianByteArray$for;

.field private static final if:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    const-class v0, [B

    new-instance v1, Lcom/google/common/hash/LittleEndianByteArray$for$do;

    const-string v2, "UNSAFE_LITTLE_ENDIAN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/common/hash/LittleEndianByteArray$for$do;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/hash/LittleEndianByteArray$for;->UNSAFE_LITTLE_ENDIAN:Lcom/google/common/hash/LittleEndianByteArray$for;

    .line 2
    new-instance v2, Lcom/google/common/hash/LittleEndianByteArray$for$if;

    const-string v4, "UNSAFE_BIG_ENDIAN"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Lcom/google/common/hash/LittleEndianByteArray$for$if;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/common/hash/LittleEndianByteArray$for;->UNSAFE_BIG_ENDIAN:Lcom/google/common/hash/LittleEndianByteArray$for;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/common/hash/LittleEndianByteArray$for;

    aput-object v1, v4, v3

    aput-object v2, v4, v5

    .line 3
    sput-object v4, Lcom/google/common/hash/LittleEndianByteArray$for;->for:[Lcom/google/common/hash/LittleEndianByteArray$for;

    .line 4
    invoke-static {}, Lcom/google/common/hash/LittleEndianByteArray$for;->do()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Lcom/google/common/hash/LittleEndianByteArray$for;->do:Lsun/misc/Unsafe;

    .line 5
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    sput v2, Lcom/google/common/hash/LittleEndianByteArray$for;->if:I

    .line 6
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    if-ne v0, v5, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/hash/LittleEndianByteArray$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/hash/LittleEndianByteArray$for;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic access$100()I
    .locals 1

    .line 1
    sget v0, Lcom/google/common/hash/LittleEndianByteArray$for;->if:I

    return v0
.end method

.method public static synthetic access$200()Lsun/misc/Unsafe;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/hash/LittleEndianByteArray$for;->do:Lsun/misc/Unsafe;

    return-object v0
.end method

.method private static do()Lsun/misc/Unsafe;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2
    :catch_0
    :try_start_1
    new-instance v0, Lcom/google/common/hash/LittleEndianByteArray$for$for;

    invoke-direct {v0}, Lcom/google/common/hash/LittleEndianByteArray$for$for;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "Could not initialize intrinsics"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/LittleEndianByteArray$for;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/hash/LittleEndianByteArray$for;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/hash/LittleEndianByteArray$for;

    return-object p0
.end method

.method public static values()[Lcom/google/common/hash/LittleEndianByteArray$for;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/hash/LittleEndianByteArray$for;->for:[Lcom/google/common/hash/LittleEndianByteArray$for;

    invoke-virtual {v0}, [Lcom/google/common/hash/LittleEndianByteArray$for;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/LittleEndianByteArray$for;

    return-object v0
.end method
