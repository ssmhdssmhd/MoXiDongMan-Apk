.class public final Lfreemarker/ext/beans/try$else;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "else"
.end annotation


# instance fields
.field private do:Ljava/lang/reflect/Method;

.field private if:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/try$else;->if:Ljava/lang/Class;

    return-object v0
.end method

.method public for(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lfreemarker/ext/beans/try$else;->if:Ljava/lang/Class;

    return-void
.end method

.method public if()Ljava/lang/reflect/Method;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/try$else;->do:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public new(Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/beans/try$else;->do:Ljava/lang/reflect/Method;

    return-void
.end method
