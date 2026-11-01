.class public Landroid/support/v4/g41$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/annotation/meta/TypeQualifierValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/g41;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/annotation/meta/TypeQualifierValidator<",
        "Landroid/support/v4/g41;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Landroid/support/v4/g41;Ljava/lang/Object;)Ljavax/annotation/meta/for;
    .locals 0

    if-nez p2, :cond_0

    .line 1
    sget-object p1, Ljavax/annotation/meta/for;->NEVER:Ljavax/annotation/meta/for;

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Ljavax/annotation/meta/for;->ALWAYS:Ljavax/annotation/meta/for;

    return-object p1
.end method

.method public bridge synthetic forConstantValue(Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljavax/annotation/meta/for;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/g41;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/g41$do;->do(Landroid/support/v4/g41;Ljava/lang/Object;)Ljavax/annotation/meta/for;

    move-result-object p1

    return-object p1
.end method
