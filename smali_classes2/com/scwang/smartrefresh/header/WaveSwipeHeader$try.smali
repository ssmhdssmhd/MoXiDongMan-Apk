.class public final enum Lcom/scwang/smartrefresh/header/WaveSwipeHeader$try;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smartrefresh/header/WaveSwipeHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "try"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/scwang/smartrefresh/header/WaveSwipeHeader$try;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FIRST:Lcom/scwang/smartrefresh/header/WaveSwipeHeader$try;

.field public static final enum SECOND:Lcom/scwang/smartrefresh/header/WaveSwipeHeader$try;

.field public static final enum THIRD:Lcom/scwang/smartrefresh/header/WaveSwipeHeader$try;

.field private static final synthetic do:[Lcom/scwang/smartrefresh/header/WaveSwipeHeader$try;


# instance fields
.field public final val:F


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$try;

    const-string v1, "FIRST"

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v3}, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$try;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$try;->FIRST:Lcom/scwang/smartrefresh/header/WaveSwipeHeader$try;

    new-instance v1, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$try;

    iget v3, v0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$try;->val:F

    const v4, 0x3e23d70a    # 0.16f

    add-float/2addr v3, v4

    const-string v4, "SECOND"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$try;-><init>(Ljava/lang/String;IF)V

    sput-object v1, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$try;->SECOND:Lcom/scwang/smartrefresh/header/WaveSwipeHeader$try;

    new-instance v3, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$try;

    iget v4, v0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$try;->val:F

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v4, v6

    const-string v6, "THIRD"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4}, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$try;-><init>(Ljava/lang/String;IF)V

    sput-object v3, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$try;->THIRD:Lcom/scwang/smartrefresh/header/WaveSwipeHeader$try;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/scwang/smartrefresh/header/WaveSwipeHeader$try;

    aput-object v0, v4, v2

    aput-object v1, v4, v5

    aput-object v3, v4, v7

    .line 2
    sput-object v4, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$try;->do:[Lcom/scwang/smartrefresh/header/WaveSwipeHeader$try;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$try;->val:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scwang/smartrefresh/header/WaveSwipeHeader$try;
    .locals 1

    .line 1
    const-class v0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$try;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$try;

    return-object p0
.end method

.method public static values()[Lcom/scwang/smartrefresh/header/WaveSwipeHeader$try;
    .locals 1

    .line 1
    sget-object v0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$try;->do:[Lcom/scwang/smartrefresh/header/WaveSwipeHeader$try;

    invoke-virtual {v0}, [Lcom/scwang/smartrefresh/header/WaveSwipeHeader$try;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scwang/smartrefresh/header/WaveSwipeHeader$try;

    return-object v0
.end method
