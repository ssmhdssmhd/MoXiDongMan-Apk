.class public Landroid/support/v4/ac;
.super Lfreemarker/ext/beans/new;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateBooleanModel;


# instance fields
.field private final else:Z


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Lfreemarker/ext/beans/try;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lfreemarker/ext/beans/new;-><init>(Ljava/lang/Object;Lfreemarker/ext/beans/try;Z)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/v4/ac;->else:Z

    return-void
.end method


# virtual methods
.method public getAsBoolean()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/ac;->else:Z

    return v0
.end method
