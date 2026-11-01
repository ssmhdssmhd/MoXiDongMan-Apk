.class Lorg/chromium/base/ApplicationStatus$new;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/ApplicationStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation


# instance fields
.field private do:I

.field private if:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/base/ApplicationStatus$ActivityStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 2
    iput v0, p0, Lorg/chromium/base/ApplicationStatus$new;->do:I

    .line 3
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/ApplicationStatus$new;->if:Lorg/chromium/base/ObserverList;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/base/ApplicationStatus$do;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/chromium/base/ApplicationStatus$new;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Lorg/chromium/base/ObserverList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/base/ApplicationStatus$ActivityStateListener;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/base/ApplicationStatus$new;->if:Lorg/chromium/base/ObserverList;

    return-object v0
.end method

.method public for(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/chromium/base/ApplicationStatus$new;->do:I

    return-void
.end method

.method public if()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/chromium/base/ApplicationStatus$new;->do:I

    return v0
.end method
