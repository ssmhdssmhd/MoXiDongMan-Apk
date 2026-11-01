.class final Lorg/apache/commons/lang3/builder/case$try;
.super Lorg/apache/commons/lang3/builder/case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/builder/case;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "try"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/case;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/case;->setUseClassName(Z)V

    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/case;->setUseIdentityHashCode(Z)V

    .line 4
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/case;->setUseFieldNames(Z)V

    const-string v0, ""

    .line 5
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/case;->setContentStart(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/case;->setContentEnd(Ljava/lang/String;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/builder/case;->SIMPLE_STYLE:Lorg/apache/commons/lang3/builder/case;

    return-object v0
.end method
