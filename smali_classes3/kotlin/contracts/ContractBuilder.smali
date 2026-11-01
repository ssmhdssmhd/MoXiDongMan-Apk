.class public interface abstract Lkotlin/contracts/ContractBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/h90;
.end annotation

.annotation build Landroid/support/v4/iz1;
    version = "1.3"
.end annotation

.annotation build Landroid/support/v4/or;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/contracts/ContractBuilder$do;
    }
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008g\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\'J\u0012\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0001H\'J\u0008\u0010\u0006\u001a\u00020\u0005H\'J&\u0010\r\u001a\u00020\u000c\"\u0004\u0008\u0000\u0010\u00072\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\nH\'\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlin/contracts/ContractBuilder;",
        "",
        "Lkotlin/contracts/Returns;",
        "returns",
        "value",
        "Lkotlin/contracts/ReturnsNotNull;",
        "returnsNotNull",
        "R",
        "Lkotlin/Function;",
        "lambda",
        "Lkotlin/contracts/do;",
        "kind",
        "Lkotlin/contracts/CallsInPlace;",
        "callsInPlace",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# virtual methods
.method public abstract callsInPlace(Lkotlin/Function;Lkotlin/contracts/do;)Lkotlin/contracts/CallsInPlace;
    .param p1    # Lkotlin/Function;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .param p2    # Lkotlin/contracts/do;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation build Landroid/support/v4/or;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/Function<",
            "+TR;>;",
            "Lkotlin/contracts/do;",
            ")",
            "Lkotlin/contracts/CallsInPlace;"
        }
    .end annotation
.end method

.method public abstract returns()Lkotlin/contracts/Returns;
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation build Landroid/support/v4/or;
    .end annotation
.end method

.method public abstract returns(Ljava/lang/Object;)Lkotlin/contracts/Returns;
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/v4/z41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation build Landroid/support/v4/or;
    .end annotation
.end method

.method public abstract returnsNotNull()Lkotlin/contracts/ReturnsNotNull;
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation build Landroid/support/v4/or;
    .end annotation
.end method
