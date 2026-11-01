.class public Landroid/support/v4/c80;
.super Ljava/util/EventObject;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final env:Lfreemarker/debug/DebuggedEnvironment;

.field private final line:I

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;ILfreemarker/debug/DebuggedEnvironment;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object p2, p0, Landroid/support/v4/c80;->name:Ljava/lang/String;

    .line 3
    iput p3, p0, Landroid/support/v4/c80;->line:I

    .line 4
    iput-object p4, p0, Landroid/support/v4/c80;->env:Lfreemarker/debug/DebuggedEnvironment;

    return-void
.end method


# virtual methods
.method public getEnvironment()Lfreemarker/debug/DebuggedEnvironment;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/c80;->env:Lfreemarker/debug/DebuggedEnvironment;

    return-object v0
.end method

.method public getLine()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/c80;->line:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/c80;->name:Ljava/lang/String;

    return-object v0
.end method
