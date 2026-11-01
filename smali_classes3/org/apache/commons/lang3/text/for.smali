.class public abstract Lorg/apache/commons/lang3/text/for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/text/for$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final do:Lorg/apache/commons/lang3/text/for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/lang3/text/for<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final if:Lorg/apache/commons/lang3/text/for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/lang3/text/for<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/text/for$do;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/for$do;-><init>(Ljava/util/Map;)V

    sput-object v0, Lorg/apache/commons/lang3/text/for;->do:Lorg/apache/commons/lang3/text/for;

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 3
    new-instance v1, Lorg/apache/commons/lang3/text/for$do;

    invoke-direct {v1, v0}, Lorg/apache/commons/lang3/text/for$do;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    sget-object v1, Lorg/apache/commons/lang3/text/for;->do:Lorg/apache/commons/lang3/text/for;

    .line 5
    :goto_0
    sput-object v1, Lorg/apache/commons/lang3/text/for;->if:Lorg/apache/commons/lang3/text/for;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static for()Lorg/apache/commons/lang3/text/for;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/text/for<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/text/for;->do:Lorg/apache/commons/lang3/text/for;

    return-object v0
.end method

.method public static if(Ljava/util/Map;)Lorg/apache/commons/lang3/text/for;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Lorg/apache/commons/lang3/text/for<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/text/for$do;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/text/for$do;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static new()Lorg/apache/commons/lang3/text/for;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/text/for<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/text/for;->if:Lorg/apache/commons/lang3/text/for;

    return-object v0
.end method


# virtual methods
.method public abstract do(Ljava/lang/String;)Ljava/lang/String;
.end method
