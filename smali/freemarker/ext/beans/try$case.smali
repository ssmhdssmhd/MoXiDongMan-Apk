.class public final Lfreemarker/ext/beans/try$case;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "case"
.end annotation


# instance fields
.field private do:Ljava/beans/PropertyDescriptor;

.field private for:Ljava/lang/String;

.field private if:Z

.field private new:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public case(Ljava/beans/PropertyDescriptor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/beans/try$case;->do:Ljava/beans/PropertyDescriptor;

    return-void
.end method

.method public do()Ljava/beans/PropertyDescriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/try$case;->do:Ljava/beans/PropertyDescriptor;

    return-object v0
.end method

.method public else(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/beans/try$case;->for:Ljava/lang/String;

    return-void
.end method

.method public for()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/ext/beans/try$case;->new:Z

    return v0
.end method

.method public goto(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfreemarker/ext/beans/try$case;->new:Z

    return-void
.end method

.method public if()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/try$case;->for:Ljava/lang/String;

    return-object v0
.end method

.method public new()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/ext/beans/try$case;->if:Z

    return v0
.end method

.method public this(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfreemarker/ext/beans/try$case;->if:Z

    return-void
.end method

.method public try(Ljava/lang/reflect/Method;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lfreemarker/ext/beans/try$case;->do:Ljava/beans/PropertyDescriptor;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lfreemarker/ext/beans/try$case;->if:Z

    .line 3
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/ext/beans/try$case;->for:Ljava/lang/String;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lfreemarker/ext/beans/try$case;->new:Z

    return-void
.end method
