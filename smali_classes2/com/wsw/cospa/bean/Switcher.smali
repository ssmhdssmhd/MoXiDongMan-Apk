.class public Lcom/wsw/cospa/bean/Switcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private enable:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/bean/Switcher;->element:Ljava/lang/Object;

    .line 3
    iput-boolean p2, p0, Lcom/wsw/cospa/bean/Switcher;->enable:Z

    return-void
.end method


# virtual methods
.method public getElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/Switcher;->element:Ljava/lang/Object;

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/bean/Switcher;->enable:Z

    return v0
.end method

.method public setElement(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/Switcher;->element:Ljava/lang/Object;

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/bean/Switcher;->enable:Z

    return-void
.end method

.method public switchEnable()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/bean/Switcher;->enable:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/wsw/cospa/bean/Switcher;->enable:Z

    return-void
.end method
