.class final Lfreemarker/ext/beans/class$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# static fields
.field private static final for:Lfreemarker/ext/beans/class$do;

.field private static final new:Lfreemarker/ext/beans/class$do;


# instance fields
.field private final do:Ljava/lang/String;

.field private final if:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lfreemarker/ext/beans/class$do;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "get"

    invoke-direct {v0, v3, v2}, Lfreemarker/ext/beans/class$do;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lfreemarker/ext/beans/class$do;->for:Lfreemarker/ext/beans/class$do;

    .line 2
    new-instance v0, Lfreemarker/ext/beans/class$do;

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v4

    invoke-direct {v0, v3, v1}, Lfreemarker/ext/beans/class$do;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lfreemarker/ext/beans/class$do;->new:Lfreemarker/ext/beans/class$do;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/beans/class$do;->do:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lfreemarker/ext/beans/class$do;->if:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 1

    .line 4
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lfreemarker/ext/beans/class$do;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic do()Lfreemarker/ext/beans/class$do;
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/ext/beans/class$do;->for:Lfreemarker/ext/beans/class$do;

    return-object v0
.end method

.method public static synthetic if()Lfreemarker/ext/beans/class$do;
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/ext/beans/class$do;->new:Lfreemarker/ext/beans/class$do;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lfreemarker/ext/beans/class$do;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lfreemarker/ext/beans/class$do;

    .line 3
    iget-object v0, p1, Lfreemarker/ext/beans/class$do;->do:Ljava/lang/String;

    iget-object v2, p0, Lfreemarker/ext/beans/class$do;->do:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfreemarker/ext/beans/class$do;->if:[Ljava/lang/Class;

    iget-object p1, p1, Lfreemarker/ext/beans/class$do;->if:[Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/class$do;->do:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lfreemarker/ext/beans/class$do;->if:[Ljava/lang/Class;

    array-length v1, v1

    xor-int/2addr v0, v1

    return v0
.end method
