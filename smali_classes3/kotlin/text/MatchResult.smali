.class public interface abstract Lkotlin/text/MatchResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/text/MatchResult$if;,
        Lkotlin/text/MatchResult$do;
    }
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001:\u0001\u0017J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0000H&R\u0016\u0010\u0006\u001a\u00020\u00038&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0016\u0010\n\u001a\u00020\u00078&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\u000e\u001a\u00020\u000b8&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u001c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000f8&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\u00138V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0018"
    }
    d2 = {
        "Lkotlin/text/MatchResult;",
        "",
        "next",
        "Landroid/support/v4/dn0;",
        "getRange",
        "()Landroid/support/v4/dn0;",
        "range",
        "",
        "getValue",
        "()Ljava/lang/String;",
        "value",
        "Lkotlin/text/MatchGroupCollection;",
        "getGroups",
        "()Lkotlin/text/MatchGroupCollection;",
        "groups",
        "",
        "getGroupValues",
        "()Ljava/util/List;",
        "groupValues",
        "Lkotlin/text/MatchResult$if;",
        "getDestructured",
        "()Lkotlin/text/MatchResult$if;",
        "destructured",
        "if",
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
.method public abstract getDestructured()Lkotlin/text/MatchResult$if;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end method

.method public abstract getGroupValues()Ljava/util/List;
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGroups()Lkotlin/text/MatchGroupCollection;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end method

.method public abstract getRange()Landroid/support/v4/dn0;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end method

.method public abstract getValue()Ljava/lang/String;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end method

.method public abstract next()Lkotlin/text/MatchResult;
    .annotation build Landroid/support/v4/z41;
    .end annotation
.end method
