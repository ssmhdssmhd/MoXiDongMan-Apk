.class final Lfreemarker/ext/beans/public;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:Ljava/lang/reflect/Method;

.field private final if:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/beans/public;->do:Ljava/lang/reflect/Method;

    .line 3
    iput-object p2, p0, Lfreemarker/ext/beans/public;->if:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/reflect/Method;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/public;->if:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public if()Ljava/lang/reflect/Method;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/public;->do:Ljava/lang/reflect/Method;

    return-object v0
.end method
