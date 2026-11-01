.class final Lfreemarker/ext/beans/j$do;
.super Landroid/support/v4/al2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/ext/beans/j;->catch(Ljava/lang/Object;Lfreemarker/ext/beans/this;Ljava/lang/Throwable;)Landroid/support/v4/k52;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/al2;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Lfreemarker/ext/beans/this;

    invoke-virtual {p1}, Lfreemarker/ext/beans/this;->do()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
