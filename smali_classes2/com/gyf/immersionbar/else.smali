.class public final Lcom/gyf/immersionbar/else;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gyf/immersionbar/ImmersionCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private break:Z

.field private case:Landroid/view/ViewGroup;

.field private catch:Z

.field private class:Z

.field private const:Lcom/gyf/immersionbar/for;

.field private default:I

.field private do:Landroid/app/Activity;

.field private else:Landroid/view/ViewGroup;

.field private extends:I

.field private final:Lcom/gyf/immersionbar/do;

.field private finally:I

.field private for:Landroid/app/Fragment;

.field private goto:Lcom/gyf/immersionbar/else;

.field private if:Landroidx/fragment/app/Fragment;

.field private import:Lcom/gyf/immersionbar/case;

.field private native:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gyf/immersionbar/for;",
            ">;"
        }
    .end annotation
.end field

.field private new:Landroid/app/Dialog;

.field private public:I

.field private return:Z

.field private static:Z

.field private super:I

.field private switch:Z

.field private this:Z

.field private throw:I

.field private throws:I

.field private try:Landroid/view/Window;

.field private while:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->this:Z

    .line 3
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->break:Z

    .line 4
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->catch:Z

    .line 5
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->class:Z

    .line 6
    iput v0, p0, Lcom/gyf/immersionbar/else;->super:I

    .line 7
    iput v0, p0, Lcom/gyf/immersionbar/else;->throw:I

    .line 8
    iput v0, p0, Lcom/gyf/immersionbar/else;->while:I

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/gyf/immersionbar/else;->import:Lcom/gyf/immersionbar/case;

    .line 10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/gyf/immersionbar/else;->native:Ljava/util/Map;

    .line 11
    iput v0, p0, Lcom/gyf/immersionbar/else;->public:I

    .line 12
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->return:Z

    .line 13
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->static:Z

    .line 14
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->switch:Z

    .line 15
    iput v0, p0, Lcom/gyf/immersionbar/else;->throws:I

    iput v0, p0, Lcom/gyf/immersionbar/else;->default:I

    iput v0, p0, Lcom/gyf/immersionbar/else;->extends:I

    iput v0, p0, Lcom/gyf/immersionbar/else;->finally:I

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->this:Z

    .line 17
    iput-object p1, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    .line 18
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/else;->e0(Landroid/view/Window;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/Dialog;)V
    .locals 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->this:Z

    .line 105
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->break:Z

    .line 106
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->catch:Z

    .line 107
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->class:Z

    .line 108
    iput v0, p0, Lcom/gyf/immersionbar/else;->super:I

    .line 109
    iput v0, p0, Lcom/gyf/immersionbar/else;->throw:I

    .line 110
    iput v0, p0, Lcom/gyf/immersionbar/else;->while:I

    const/4 v1, 0x0

    .line 111
    iput-object v1, p0, Lcom/gyf/immersionbar/else;->import:Lcom/gyf/immersionbar/case;

    .line 112
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/gyf/immersionbar/else;->native:Ljava/util/Map;

    .line 113
    iput v0, p0, Lcom/gyf/immersionbar/else;->public:I

    .line 114
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->return:Z

    .line 115
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->static:Z

    .line 116
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->switch:Z

    .line 117
    iput v0, p0, Lcom/gyf/immersionbar/else;->throws:I

    iput v0, p0, Lcom/gyf/immersionbar/else;->default:I

    iput v0, p0, Lcom/gyf/immersionbar/else;->extends:I

    iput v0, p0, Lcom/gyf/immersionbar/else;->finally:I

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->class:Z

    .line 119
    iput-object p1, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    .line 120
    iput-object p2, p0, Lcom/gyf/immersionbar/else;->new:Landroid/app/Dialog;

    .line 121
    invoke-direct {p0}, Lcom/gyf/immersionbar/else;->volatile()V

    .line 122
    iget-object p1, p0, Lcom/gyf/immersionbar/else;->new:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/else;->e0(Landroid/view/Window;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/DialogFragment;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->this:Z

    .line 83
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->break:Z

    .line 84
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->catch:Z

    .line 85
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->class:Z

    .line 86
    iput v0, p0, Lcom/gyf/immersionbar/else;->super:I

    .line 87
    iput v0, p0, Lcom/gyf/immersionbar/else;->throw:I

    .line 88
    iput v0, p0, Lcom/gyf/immersionbar/else;->while:I

    const/4 v1, 0x0

    .line 89
    iput-object v1, p0, Lcom/gyf/immersionbar/else;->import:Lcom/gyf/immersionbar/case;

    .line 90
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/gyf/immersionbar/else;->native:Ljava/util/Map;

    .line 91
    iput v0, p0, Lcom/gyf/immersionbar/else;->public:I

    .line 92
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->return:Z

    .line 93
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->static:Z

    .line 94
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->switch:Z

    .line 95
    iput v0, p0, Lcom/gyf/immersionbar/else;->throws:I

    iput v0, p0, Lcom/gyf/immersionbar/else;->default:I

    iput v0, p0, Lcom/gyf/immersionbar/else;->extends:I

    iput v0, p0, Lcom/gyf/immersionbar/else;->finally:I

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->class:Z

    .line 97
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->catch:Z

    .line 98
    invoke-virtual {p1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    .line 99
    iput-object p1, p0, Lcom/gyf/immersionbar/else;->for:Landroid/app/Fragment;

    .line 100
    invoke-virtual {p1}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/gyf/immersionbar/else;->new:Landroid/app/Dialog;

    .line 101
    invoke-direct {p0}, Lcom/gyf/immersionbar/else;->volatile()V

    .line 102
    iget-object p1, p0, Lcom/gyf/immersionbar/else;->new:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/else;->e0(Landroid/view/Window;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->this:Z

    .line 41
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->break:Z

    .line 42
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->catch:Z

    .line 43
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->class:Z

    .line 44
    iput v0, p0, Lcom/gyf/immersionbar/else;->super:I

    .line 45
    iput v0, p0, Lcom/gyf/immersionbar/else;->throw:I

    .line 46
    iput v0, p0, Lcom/gyf/immersionbar/else;->while:I

    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lcom/gyf/immersionbar/else;->import:Lcom/gyf/immersionbar/case;

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/gyf/immersionbar/else;->native:Ljava/util/Map;

    .line 49
    iput v0, p0, Lcom/gyf/immersionbar/else;->public:I

    .line 50
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->return:Z

    .line 51
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->static:Z

    .line 52
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->switch:Z

    .line 53
    iput v0, p0, Lcom/gyf/immersionbar/else;->throws:I

    iput v0, p0, Lcom/gyf/immersionbar/else;->default:I

    iput v0, p0, Lcom/gyf/immersionbar/else;->extends:I

    iput v0, p0, Lcom/gyf/immersionbar/else;->finally:I

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->break:Z

    .line 55
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    .line 56
    iput-object p1, p0, Lcom/gyf/immersionbar/else;->for:Landroid/app/Fragment;

    .line 57
    invoke-direct {p0}, Lcom/gyf/immersionbar/else;->volatile()V

    .line 58
    iget-object p1, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/else;->e0(Landroid/view/Window;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/DialogFragment;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->this:Z

    .line 61
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->break:Z

    .line 62
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->catch:Z

    .line 63
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->class:Z

    .line 64
    iput v0, p0, Lcom/gyf/immersionbar/else;->super:I

    .line 65
    iput v0, p0, Lcom/gyf/immersionbar/else;->throw:I

    .line 66
    iput v0, p0, Lcom/gyf/immersionbar/else;->while:I

    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lcom/gyf/immersionbar/else;->import:Lcom/gyf/immersionbar/case;

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/gyf/immersionbar/else;->native:Ljava/util/Map;

    .line 69
    iput v0, p0, Lcom/gyf/immersionbar/else;->public:I

    .line 70
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->return:Z

    .line 71
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->static:Z

    .line 72
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->switch:Z

    .line 73
    iput v0, p0, Lcom/gyf/immersionbar/else;->throws:I

    iput v0, p0, Lcom/gyf/immersionbar/else;->default:I

    iput v0, p0, Lcom/gyf/immersionbar/else;->extends:I

    iput v0, p0, Lcom/gyf/immersionbar/else;->finally:I

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->class:Z

    .line 75
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->catch:Z

    .line 76
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    .line 77
    iput-object p1, p0, Lcom/gyf/immersionbar/else;->if:Landroidx/fragment/app/Fragment;

    .line 78
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/gyf/immersionbar/else;->new:Landroid/app/Dialog;

    .line 79
    invoke-direct {p0}, Lcom/gyf/immersionbar/else;->volatile()V

    .line 80
    iget-object p1, p0, Lcom/gyf/immersionbar/else;->new:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/else;->e0(Landroid/view/Window;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->this:Z

    .line 21
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->break:Z

    .line 22
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->catch:Z

    .line 23
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->class:Z

    .line 24
    iput v0, p0, Lcom/gyf/immersionbar/else;->super:I

    .line 25
    iput v0, p0, Lcom/gyf/immersionbar/else;->throw:I

    .line 26
    iput v0, p0, Lcom/gyf/immersionbar/else;->while:I

    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lcom/gyf/immersionbar/else;->import:Lcom/gyf/immersionbar/case;

    .line 28
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/gyf/immersionbar/else;->native:Ljava/util/Map;

    .line 29
    iput v0, p0, Lcom/gyf/immersionbar/else;->public:I

    .line 30
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->return:Z

    .line 31
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->static:Z

    .line 32
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->switch:Z

    .line 33
    iput v0, p0, Lcom/gyf/immersionbar/else;->throws:I

    iput v0, p0, Lcom/gyf/immersionbar/else;->default:I

    iput v0, p0, Lcom/gyf/immersionbar/else;->extends:I

    iput v0, p0, Lcom/gyf/immersionbar/else;->finally:I

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->break:Z

    .line 35
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    .line 36
    iput-object p1, p0, Lcom/gyf/immersionbar/else;->if:Landroidx/fragment/app/Fragment;

    .line 37
    invoke-direct {p0}, Lcom/gyf/immersionbar/else;->volatile()V

    .line 38
    iget-object p1, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/else;->e0(Landroid/view/Window;)V

    return-void
.end method

.method public static A(Landroid/app/Activity;)I
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    new-instance v0, Lcom/gyf/immersionbar/do;

    invoke-direct {v0, p0}, Lcom/gyf/immersionbar/do;-><init>(Landroid/app/Activity;)V

    .line 2
    invoke-virtual {v0}, Lcom/gyf/immersionbar/do;->case()I

    move-result p0

    return p0
.end method

.method public static B(Landroid/app/Fragment;)I
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/else;->A(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static C(Landroidx/fragment/app/Fragment;)I
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/else;->A(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static D(Landroid/app/Activity;)I
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/gyf/immersionbar/else;->U(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/support/v4/r41;->try(Landroid/app/Activity;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static E(Landroid/app/Fragment;)I
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/else;->D(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static F(Landroidx/fragment/app/Fragment;)I
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/else;->D(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method private static K()Lcom/gyf/immersionbar/catch;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gyf/immersionbar/catch;->break()Lcom/gyf/immersionbar/catch;

    move-result-object v0

    return-object v0
.end method

.method public static L(Landroid/app/Activity;)I
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    new-instance v0, Lcom/gyf/immersionbar/do;

    invoke-direct {v0, p0}, Lcom/gyf/immersionbar/do;-><init>(Landroid/app/Activity;)V

    .line 2
    invoke-virtual {v0}, Lcom/gyf/immersionbar/do;->this()I

    move-result p0

    return p0
.end method

.method public static M(Landroid/app/Fragment;)I
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/else;->L(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method private M0()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/gyf/immersionbar/else;->h2()V

    .line 2
    invoke-direct {p0}, Lcom/gyf/immersionbar/else;->k()V

    .line 3
    iget-boolean v0, p0, Lcom/gyf/immersionbar/else;->break:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/support/v4/n51;->this()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/gyf/immersionbar/else;->j()V

    :cond_0
    return-void
.end method

.method public static N(Landroidx/fragment/app/Fragment;)I
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/else;->L(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static R(Landroid/app/Activity;)Z
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    new-instance v0, Lcom/gyf/immersionbar/do;

    invoke-direct {v0, p0}, Lcom/gyf/immersionbar/do;-><init>(Landroid/app/Activity;)V

    .line 2
    invoke-virtual {v0}, Lcom/gyf/immersionbar/do;->catch()Z

    move-result p0

    return p0
.end method

.method public static R0(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/gyf/immersionbar/else;->S0(Landroid/app/Activity;Z)V

    return-void
.end method

.method public static S(Landroid/app/Fragment;)Z
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/else;->R(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static S0(Landroid/app/Activity;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const v0, 0x1020002

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/else;->V0(Landroid/view/View;Z)V

    return-void
.end method

.method public static T(Landroidx/fragment/app/Fragment;)Z
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/else;->R(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static T0(Landroid/app/Fragment;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/else;->R0(Landroid/app/Activity;)V

    return-void
.end method

.method public static U(Landroid/app/Activity;)Z
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Landroid/support/v4/r41;->const(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static U0(Landroid/app/Fragment;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/else;->S0(Landroid/app/Activity;Z)V

    return-void
.end method

.method public static V(Landroid/app/Fragment;)Z
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/else;->U(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method private static V0(Landroid/view/View;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 2
    check-cast p0, Landroid/view/ViewGroup;

    .line 3
    instance-of v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/else;->V0(Landroid/view/View;Z)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :goto_0
    return-void
.end method

.method public static W(Landroid/view/View;)Z
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Landroid/support/v4/r41;->final(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static W0(Landroidx/fragment/app/Fragment;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/else;->R0(Landroid/app/Activity;)V

    return-void
.end method

.method public static X(Landroidx/fragment/app/Fragment;)Z
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/else;->U(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static X0(Landroidx/fragment/app/Fragment;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/else;->S0(Landroid/app/Activity;Z)V

    return-void
.end method

.method private Y(I)I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 2
    sget-object v0, Lcom/gyf/immersionbar/else$if;->do:[I

    iget-object v1, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-object v1, v1, Lcom/gyf/immersionbar/for;->break:Lcom/gyf/immersionbar/if;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    or-int/lit8 p1, p1, 0x0

    goto :goto_0

    :cond_1
    or-int/lit16 p1, p1, 0x202

    goto :goto_0

    :cond_2
    or-int/lit16 p1, p1, 0x404

    goto :goto_0

    :cond_3
    or-int/lit16 p1, p1, 0x206

    :cond_4
    :goto_0
    or-int/lit16 p1, p1, 0x1000

    return p1
.end method

.method private Y0(I)I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-boolean v0, v0, Lcom/gyf/immersionbar/for;->class:Z

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x10

    :cond_0
    return p1
.end method

.method private a()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/gyf/immersionbar/else;->return:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->try:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 4
    iget-object v1, p0, Lcom/gyf/immersionbar/else;->try:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public static a0(Landroid/view/Window;)V
    .locals 1
    .param p0    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x400

    .line 1
    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method private c0(I)I
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/gyf/immersionbar/else;->return:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-object v1, p0, Lcom/gyf/immersionbar/else;->try:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v1

    iput v1, v0, Lcom/gyf/immersionbar/for;->for:I

    :cond_0
    or-int/lit16 p1, p1, 0x400

    .line 3
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-boolean v1, v0, Lcom/gyf/immersionbar/for;->goto:Z

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lcom/gyf/immersionbar/for;->interface:Z

    if-eqz v0, :cond_1

    or-int/lit16 p1, p1, 0x200

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->try:Landroid/view/Window;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 5
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->final:Lcom/gyf/immersionbar/do;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/do;->catch()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->try:Landroid/view/Window;

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->try:Landroid/view/Window;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 8
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-boolean v1, v0, Lcom/gyf/immersionbar/for;->while:Z

    if-eqz v1, :cond_3

    .line 9
    iget-object v1, p0, Lcom/gyf/immersionbar/else;->try:Landroid/view/Window;

    iget v2, v0, Lcom/gyf/immersionbar/for;->do:I

    iget v3, v0, Lcom/gyf/immersionbar/for;->import:I

    iget v0, v0, Lcom/gyf/immersionbar/for;->new:F

    invoke-static {v2, v3, v0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/gyf/immersionbar/else;->try:Landroid/view/Window;

    iget v2, v0, Lcom/gyf/immersionbar/for;->do:I

    const/4 v3, 0x0

    iget v0, v0, Lcom/gyf/immersionbar/for;->new:F

    invoke-static {v2, v3, v0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-boolean v1, v0, Lcom/gyf/immersionbar/for;->interface:Z

    if-eqz v1, :cond_4

    .line 12
    iget-object v1, p0, Lcom/gyf/immersionbar/else;->try:Landroid/view/Window;

    iget v2, v0, Lcom/gyf/immersionbar/for;->if:I

    iget v3, v0, Lcom/gyf/immersionbar/for;->native:I

    iget v0, v0, Lcom/gyf/immersionbar/for;->case:F

    invoke-static {v2, v3, v0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_1

    .line 13
    :cond_4
    iget-object v1, p0, Lcom/gyf/immersionbar/else;->try:Landroid/view/Window;

    iget v0, v0, Lcom/gyf/immersionbar/for;->for:I

    invoke-virtual {v1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :goto_1
    return p1
.end method

.method private c1(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->else:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 3
    :cond_0
    iput p1, p0, Lcom/gyf/immersionbar/else;->throws:I

    .line 4
    iput p2, p0, Lcom/gyf/immersionbar/else;->default:I

    .line 5
    iput p3, p0, Lcom/gyf/immersionbar/else;->extends:I

    .line 6
    iput p4, p0, Lcom/gyf/immersionbar/else;->finally:I

    return-void
.end method

.method private continue()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->import:Lcom/gyf/immersionbar/case;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/gyf/immersionbar/case;->do()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/gyf/immersionbar/else;->import:Lcom/gyf/immersionbar/case;

    .line 5
    :cond_0
    invoke-static {}, Lcom/gyf/immersionbar/try;->if()Lcom/gyf/immersionbar/try;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gyf/immersionbar/try;->new(Lcom/gyf/immersionbar/ImmersionCallback;)V

    .line 6
    invoke-static {}, Lcom/gyf/immersionbar/this;->do()Lcom/gyf/immersionbar/this;

    move-result-object v0

    iget-object v1, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-object v1, v1, Lcom/gyf/immersionbar/for;->synchronized:Lcom/gyf/immersionbar/OnNavigationBarListener;

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/this;->removeOnNavigationBarListener(Lcom/gyf/immersionbar/OnNavigationBarListener;)V

    :cond_1
    return-void
.end method

.method private d0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->try:Landroid/view/Window;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2
    invoke-direct {p0}, Lcom/gyf/immersionbar/else;->y1()V

    .line 3
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->final:Lcom/gyf/immersionbar/do;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/do;->catch()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/support/v4/n51;->this()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-boolean v1, v0, Lcom/gyf/immersionbar/for;->interface:Z

    const/high16 v2, 0x8000000

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lcom/gyf/immersionbar/for;->protected:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->try:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->try:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 7
    :goto_0
    iget v0, p0, Lcom/gyf/immersionbar/else;->super:I

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->final:Lcom/gyf/immersionbar/do;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/do;->new()I

    move-result v0

    iput v0, p0, Lcom/gyf/immersionbar/else;->super:I

    .line 9
    :cond_2
    iget v0, p0, Lcom/gyf/immersionbar/else;->throw:I

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->final:Lcom/gyf/immersionbar/do;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/do;->case()I

    move-result v0

    iput v0, p0, Lcom/gyf/immersionbar/else;->throw:I

    .line 11
    :cond_3
    invoke-direct {p0}, Lcom/gyf/immersionbar/else;->x1()V

    :cond_4
    return-void
.end method

.method private d1()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/support/v4/n51;->final()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->try:Landroid/view/Window;

    iget-object v1, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-boolean v1, v1, Lcom/gyf/immersionbar/for;->catch:Z

    const-string v2, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    invoke-static {v0, v2, v1}, Lcom/gyf/immersionbar/class;->for(Landroid/view/Window;Ljava/lang/String;Z)V

    .line 3
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-boolean v1, v0, Lcom/gyf/immersionbar/for;->interface:Z

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/gyf/immersionbar/else;->try:Landroid/view/Window;

    iget-boolean v0, v0, Lcom/gyf/immersionbar/for;->class:Z

    const-string v2, "EXTRA_FLAG_NAVIGATION_BAR_DARK_MODE"

    invoke-static {v1, v2, v0}, Lcom/gyf/immersionbar/class;->for(Landroid/view/Window;Ljava/lang/String;Z)V

    .line 5
    :cond_0
    invoke-static {}, Landroid/support/v4/n51;->catch()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget v1, v0, Lcom/gyf/immersionbar/for;->private:I

    if-eqz v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/gyf/immersionbar/class;->try(Landroid/app/Activity;I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    iget-boolean v0, v0, Lcom/gyf/immersionbar/for;->catch:Z

    invoke-static {v1, v0}, Lcom/gyf/immersionbar/class;->case(Landroid/app/Activity;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private d2()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-object v0, v0, Lcom/gyf/immersionbar/for;->public:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-object v0, v0, Lcom/gyf/immersionbar/for;->public:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 6
    iget-object v3, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget v3, v3, Lcom/gyf/immersionbar/for;->do:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 7
    iget-object v4, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget v4, v4, Lcom/gyf/immersionbar/for;->import:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 8
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 10
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_0

    .line 11
    iget-object v1, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget v1, v1, Lcom/gyf/immersionbar/for;->return:F

    const/4 v5, 0x0

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v5

    if-nez v1, :cond_2

    .line 12
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget v4, v4, Lcom/gyf/immersionbar/for;->new:F

    invoke-static {v1, v3, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget v4, v4, Lcom/gyf/immersionbar/for;->return:F

    invoke-static {v1, v3, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private e0(Landroid/view/Window;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/gyf/immersionbar/else;->try:Landroid/view/Window;

    .line 2
    new-instance p1, Lcom/gyf/immersionbar/for;

    invoke-direct {p1}, Lcom/gyf/immersionbar/for;-><init>()V

    iput-object p1, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    .line 3
    iget-object p1, p0, Lcom/gyf/immersionbar/else;->try:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/gyf/immersionbar/else;->case:Landroid/view/ViewGroup;

    const v0, 0x1020002

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/gyf/immersionbar/else;->else:Landroid/view/ViewGroup;

    return-void
.end method

.method private e1(I)I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-boolean v0, v0, Lcom/gyf/immersionbar/for;->catch:Z

    if-eqz v0, :cond_0

    or-int/lit16 p1, p1, 0x2000

    :cond_0
    return p1
.end method

.method public static varargs f1(Landroid/app/Activity;I[Landroid/view/View;)V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_6

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 2
    :cond_1
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    aget-object v2, p2, v1

    if-nez v2, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    sget v3, Lcom/gyf/immersionbar/R$id;->immersion_fits_layout_overlap:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_3

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 5
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, p1, :cond_5

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_4

    .line 8
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, p0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 9
    :cond_4
    iput p1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 10
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private g()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {}, Landroid/support/v4/n51;->this()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/gyf/immersionbar/else;->h()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/gyf/immersionbar/else;->i()V

    .line 5
    :goto_0
    invoke-direct {p0}, Lcom/gyf/immersionbar/else;->instanceof()V

    :cond_1
    return-void
.end method

.method public static varargs g1(Landroid/app/Activity;[Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/gyf/immersionbar/else;->L(Landroid/app/Activity;)I

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/gyf/immersionbar/else;->f1(Landroid/app/Activity;I[Landroid/view/View;)V

    return-void
.end method

.method private h()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/gyf/immersionbar/else;->h2()V

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->case:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/gyf/immersionbar/else;->strictfp(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, v1, v1, v1, v1}, Lcom/gyf/immersionbar/else;->c1(IIII)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-boolean v0, v0, Lcom/gyf/immersionbar/for;->default:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/gyf/immersionbar/else;->public:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 5
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->final:Lcom/gyf/immersionbar/do;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/do;->this()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-boolean v2, v2, Lcom/gyf/immersionbar/for;->continue:Z

    if-eqz v2, :cond_2

    .line 7
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->final:Lcom/gyf/immersionbar/do;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/do;->this()I

    move-result v0

    iget v2, p0, Lcom/gyf/immersionbar/else;->while:I

    add-int/2addr v0, v2

    .line 8
    :cond_2
    invoke-direct {p0, v1, v0, v1, v1}, Lcom/gyf/immersionbar/else;->c1(IIII)V

    return-void
.end method

.method private static h0(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static varargs h1(Landroid/app/Fragment;I[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/gyf/immersionbar/else;->f1(Landroid/app/Activity;I[Landroid/view/View;)V

    return-void
.end method

.method private h2()V
    .locals 2

    .line 1
    new-instance v0, Lcom/gyf/immersionbar/do;

    iget-object v1, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/gyf/immersionbar/do;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/gyf/immersionbar/else;->final:Lcom/gyf/immersionbar/do;

    .line 2
    iget-boolean v1, p0, Lcom/gyf/immersionbar/else;->return:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/gyf/immersionbar/else;->static:Z

    if-eqz v1, :cond_1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/gyf/immersionbar/do;->do()I

    move-result v0

    iput v0, p0, Lcom/gyf/immersionbar/else;->while:I

    :cond_1
    return-void
.end method

.method private i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-boolean v0, v0, Lcom/gyf/immersionbar/for;->continue:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->static:Z

    .line 3
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->else:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->static:Z

    .line 5
    invoke-direct {p0}, Lcom/gyf/immersionbar/else;->M0()V

    :goto_0
    return-void
.end method

.method public static varargs i1(Landroid/app/Fragment;[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/else;->g1(Landroid/app/Activity;[Landroid/view/View;)V

    return-void
.end method

.method private i2()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/gyf/immersionbar/else;->this()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/gyf/immersionbar/else;->h2()V

    .line 4
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->goto:Lcom/gyf/immersionbar/else;

    if-eqz v0, :cond_1

    .line 5
    iget-boolean v1, p0, Lcom/gyf/immersionbar/else;->break:Z

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput-object v1, v0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    .line 7
    :cond_0
    iget-boolean v1, p0, Lcom/gyf/immersionbar/else;->class:Z

    if-eqz v1, :cond_1

    .line 8
    iget-boolean v1, v0, Lcom/gyf/immersionbar/else;->switch:Z

    if-eqz v1, :cond_1

    .line 9
    iget-object v0, v0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gyf/immersionbar/for;->strictfp:Z

    :cond_1
    return-void
.end method

.method private implements()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_5

    .line 2
    iget-boolean v0, p0, Lcom/gyf/immersionbar/else;->break:Z

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-boolean v0, v0, Lcom/gyf/immersionbar/for;->strictfp:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->import:Lcom/gyf/immersionbar/case;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/gyf/immersionbar/case;

    invoke-direct {v0, p0}, Lcom/gyf/immersionbar/case;-><init>(Lcom/gyf/immersionbar/else;)V

    iput-object v0, p0, Lcom/gyf/immersionbar/else;->import:Lcom/gyf/immersionbar/case;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->import:Lcom/gyf/immersionbar/case;

    iget-object v1, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget v1, v1, Lcom/gyf/immersionbar/for;->volatile:I

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/case;->for(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->import:Lcom/gyf/immersionbar/case;

    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {v0}, Lcom/gyf/immersionbar/case;->if()V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->goto:Lcom/gyf/immersionbar/else;

    if-eqz v0, :cond_5

    .line 10
    iget-object v1, v0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-boolean v1, v1, Lcom/gyf/immersionbar/for;->strictfp:Z

    if-eqz v1, :cond_4

    .line 11
    iget-object v1, v0, Lcom/gyf/immersionbar/else;->import:Lcom/gyf/immersionbar/case;

    if-nez v1, :cond_3

    .line 12
    new-instance v1, Lcom/gyf/immersionbar/case;

    invoke-direct {v1, v0}, Lcom/gyf/immersionbar/case;-><init>(Lcom/gyf/immersionbar/else;)V

    iput-object v1, v0, Lcom/gyf/immersionbar/else;->import:Lcom/gyf/immersionbar/case;

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->goto:Lcom/gyf/immersionbar/else;

    iget-object v1, v0, Lcom/gyf/immersionbar/else;->import:Lcom/gyf/immersionbar/case;

    iget-object v0, v0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget v0, v0, Lcom/gyf/immersionbar/for;->volatile:I

    invoke-virtual {v1, v0}, Lcom/gyf/immersionbar/case;->for(I)V

    goto :goto_0

    .line 14
    :cond_4
    iget-object v0, v0, Lcom/gyf/immersionbar/else;->import:Lcom/gyf/immersionbar/case;

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {v0}, Lcom/gyf/immersionbar/case;->if()V

    :cond_5
    :goto_0
    return-void
.end method

.method private instanceof()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-boolean v0, v0, Lcom/gyf/immersionbar/for;->package:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    invoke-static {v0}, Lcom/gyf/immersionbar/else;->L(Landroid/app/Activity;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/gyf/immersionbar/else;->public:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-object v4, v4, Lcom/gyf/immersionbar/for;->finally:Landroid/view/View;

    aput-object v4, v3, v1

    invoke-static {v2, v0, v3}, Lcom/gyf/immersionbar/else;->f1(Landroid/app/Activity;I[Landroid/view/View;)V

    goto :goto_1

    .line 5
    :cond_2
    iget-object v2, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-object v4, v4, Lcom/gyf/immersionbar/for;->extends:Landroid/view/View;

    aput-object v4, v3, v1

    invoke-static {v2, v0, v3}, Lcom/gyf/immersionbar/else;->r1(Landroid/app/Activity;I[Landroid/view/View;)V

    goto :goto_1

    .line 6
    :cond_3
    iget-object v2, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-object v4, v4, Lcom/gyf/immersionbar/for;->extends:Landroid/view/View;

    aput-object v4, v3, v1

    invoke-static {v2, v0, v3}, Lcom/gyf/immersionbar/else;->l1(Landroid/app/Activity;I[Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public static interface(Landroid/app/Activity;Landroid/app/Dialog;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Dialog;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/gyf/immersionbar/else;->K()Lcom/gyf/immersionbar/catch;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/gyf/immersionbar/catch;->if(Landroid/app/Activity;Landroid/app/Dialog;)V

    return-void
.end method

.method private j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->case:Landroid/view/ViewGroup;

    sget v1, Lcom/gyf/immersionbar/new;->if:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-boolean v2, v1, Lcom/gyf/immersionbar/for;->interface:Z

    if-eqz v2, :cond_0

    iget-boolean v1, v1, Lcom/gyf/immersionbar/for;->protected:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/gyf/immersionbar/try;->if()Lcom/gyf/immersionbar/try;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gyf/immersionbar/try;->do(Lcom/gyf/immersionbar/ImmersionCallback;)V

    .line 4
    invoke-static {}, Lcom/gyf/immersionbar/try;->if()Lcom/gyf/immersionbar/try;

    move-result-object v0

    iget-object v1, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/try;->for(Landroid/app/Application;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/gyf/immersionbar/try;->if()Lcom/gyf/immersionbar/try;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/gyf/immersionbar/try;->new(Lcom/gyf/immersionbar/ImmersionCallback;)V

    const/16 v1, 0x8

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static j0(Landroid/app/Activity;)Z
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    new-instance v0, Lcom/gyf/immersionbar/do;

    invoke-direct {v0, p0}, Lcom/gyf/immersionbar/do;-><init>(Landroid/app/Activity;)V

    .line 2
    invoke-virtual {v0}, Lcom/gyf/immersionbar/do;->class()Z

    move-result p0

    return p0
.end method

.method public static varargs j1(Landroidx/fragment/app/Fragment;I[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/gyf/immersionbar/else;->f1(Landroid/app/Activity;I[Landroid/view/View;)V

    return-void
.end method

.method private k()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->case:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/gyf/immersionbar/else;->strictfp(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v1, v1, v1, v1}, Lcom/gyf/immersionbar/else;->c1(IIII)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-boolean v0, v0, Lcom/gyf/immersionbar/for;->default:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/gyf/immersionbar/else;->public:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 4
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->final:Lcom/gyf/immersionbar/do;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/do;->this()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-boolean v2, v2, Lcom/gyf/immersionbar/for;->continue:Z

    if-eqz v2, :cond_2

    .line 6
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->final:Lcom/gyf/immersionbar/do;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/do;->this()I

    move-result v0

    iget v2, p0, Lcom/gyf/immersionbar/else;->while:I

    add-int/2addr v0, v2

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/gyf/immersionbar/else;->final:Lcom/gyf/immersionbar/do;

    invoke-virtual {v2}, Lcom/gyf/immersionbar/do;->catch()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-boolean v3, v2, Lcom/gyf/immersionbar/for;->interface:Z

    if-eqz v3, :cond_7

    iget-boolean v3, v2, Lcom/gyf/immersionbar/for;->protected:Z

    if-eqz v3, :cond_7

    .line 8
    iget-boolean v2, v2, Lcom/gyf/immersionbar/for;->goto:Z

    if-nez v2, :cond_4

    .line 9
    iget-object v2, p0, Lcom/gyf/immersionbar/else;->final:Lcom/gyf/immersionbar/do;

    invoke-virtual {v2}, Lcom/gyf/immersionbar/do;->class()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    iget-object v2, p0, Lcom/gyf/immersionbar/else;->final:Lcom/gyf/immersionbar/do;

    invoke-virtual {v2}, Lcom/gyf/immersionbar/do;->new()I

    move-result v2

    move v3, v2

    const/4 v2, 0x0

    goto :goto_2

    .line 11
    :cond_3
    iget-object v2, p0, Lcom/gyf/immersionbar/else;->final:Lcom/gyf/immersionbar/do;

    invoke-virtual {v2}, Lcom/gyf/immersionbar/do;->case()I

    move-result v2

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x0

    .line 12
    :goto_2
    iget-object v4, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-boolean v4, v4, Lcom/gyf/immersionbar/for;->this:Z

    if-eqz v4, :cond_6

    .line 13
    iget-object v4, p0, Lcom/gyf/immersionbar/else;->final:Lcom/gyf/immersionbar/do;

    invoke-virtual {v4}, Lcom/gyf/immersionbar/do;->class()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    .line 14
    :cond_6
    iget-object v4, p0, Lcom/gyf/immersionbar/else;->final:Lcom/gyf/immersionbar/do;

    invoke-virtual {v4}, Lcom/gyf/immersionbar/do;->class()Z

    move-result v4

    if-nez v4, :cond_8

    .line 15
    iget-object v2, p0, Lcom/gyf/immersionbar/else;->final:Lcom/gyf/immersionbar/do;

    invoke-virtual {v2}, Lcom/gyf/immersionbar/do;->case()I

    move-result v2

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_3
    const/4 v3, 0x0

    .line 16
    :cond_8
    :goto_4
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/gyf/immersionbar/else;->c1(IIII)V

    return-void
.end method

.method public static k0(Landroid/app/Fragment;)Z
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/else;->j0(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static varargs k1(Landroidx/fragment/app/Fragment;[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/else;->g1(Landroid/app/Activity;[Landroid/view/View;)V

    return-void
.end method

.method public static k2(Landroid/app/Activity;)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/gyf/immersionbar/else;->K()Lcom/gyf/immersionbar/catch;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gyf/immersionbar/catch;->new(Landroid/app/Activity;)Lcom/gyf/immersionbar/else;

    move-result-object p0

    return-object p0
.end method

.method public static l0(Landroidx/fragment/app/Fragment;)Z
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/else;->j0(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static varargs l1(Landroid/app/Activity;I[Landroid/view/View;)V
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_8

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 2
    :cond_1
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_8

    aget-object v2, p2, v1

    if-nez v2, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    sget v3, Lcom/gyf/immersionbar/R$id;->immersion_fits_layout_overlap:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_3

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 5
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, p1, :cond_7

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v5, -0x1

    const/4 v6, -0x2

    if-nez v3, :cond_4

    .line 8
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 9
    :cond_4
    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v7, v6, :cond_6

    if-ne v7, v5, :cond_5

    goto :goto_1

    .line 10
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int v5, p1, v5

    add-int/2addr v7, v5

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    add-int/2addr v6, p1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v6, v4

    .line 12
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    .line 13
    invoke-virtual {v2, v5, v6, v4, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 14
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 15
    :cond_6
    :goto_1
    new-instance v5, Lcom/gyf/immersionbar/else$do;

    invoke-direct {v5, v3, v2, p1, v4}, Lcom/gyf/immersionbar/else$do;-><init>(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;ILjava/lang/Integer;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public static l2(Landroid/app/Activity;Landroid/app/Dialog;)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Dialog;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/gyf/immersionbar/else;->K()Lcom/gyf/immersionbar/catch;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/gyf/immersionbar/catch;->try(Landroid/app/Activity;Landroid/app/Dialog;)Lcom/gyf/immersionbar/else;

    move-result-object p0

    return-object p0
.end method

.method public static m0()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/support/v4/n51;->final()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static varargs m1(Landroid/app/Activity;[Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/gyf/immersionbar/else;->L(Landroid/app/Activity;)I

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/gyf/immersionbar/else;->l1(Landroid/app/Activity;I[Landroid/view/View;)V

    return-void
.end method

.method public static m2(Landroid/app/DialogFragment;)Lcom/gyf/immersionbar/else;
    .locals 2
    .param p0    # Landroid/app/DialogFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/gyf/immersionbar/else;->K()Lcom/gyf/immersionbar/catch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/gyf/immersionbar/catch;->case(Landroid/app/Fragment;Z)Lcom/gyf/immersionbar/else;

    move-result-object p0

    return-object p0
.end method

.method public static n0()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/support/v4/n51;->final()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/support/v4/n51;->catch()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static varargs n1(Landroid/app/Fragment;I[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/gyf/immersionbar/else;->l1(Landroid/app/Activity;I[Landroid/view/View;)V

    return-void
.end method

.method public static n2(Landroid/app/Fragment;)Lcom/gyf/immersionbar/else;
    .locals 2
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/gyf/immersionbar/else;->K()Lcom/gyf/immersionbar/catch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/gyf/immersionbar/catch;->case(Landroid/app/Fragment;Z)Lcom/gyf/immersionbar/else;

    move-result-object p0

    return-object p0
.end method

.method public static varargs o1(Landroid/app/Fragment;[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/else;->m1(Landroid/app/Activity;[Landroid/view/View;)V

    return-void
.end method

.method public static o2(Landroid/app/Fragment;Z)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/gyf/immersionbar/else;->K()Lcom/gyf/immersionbar/catch;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/gyf/immersionbar/catch;->case(Landroid/app/Fragment;Z)Lcom/gyf/immersionbar/else;

    move-result-object p0

    return-object p0
.end method

.method public static varargs p1(Landroidx/fragment/app/Fragment;I[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/gyf/immersionbar/else;->l1(Landroid/app/Activity;I[Landroid/view/View;)V

    return-void
.end method

.method public static p2(Landroidx/fragment/app/DialogFragment;)Lcom/gyf/immersionbar/else;
    .locals 2
    .param p0    # Landroidx/fragment/app/DialogFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/gyf/immersionbar/else;->K()Lcom/gyf/immersionbar/catch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/gyf/immersionbar/catch;->else(Landroidx/fragment/app/Fragment;Z)Lcom/gyf/immersionbar/else;

    move-result-object p0

    return-object p0
.end method

.method public static protected(Landroidx/fragment/app/Fragment;)V
    .locals 2
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/gyf/immersionbar/else;->K()Lcom/gyf/immersionbar/catch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/gyf/immersionbar/catch;->for(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method public static q(Landroid/app/Activity;)I
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    new-instance v0, Lcom/gyf/immersionbar/do;

    invoke-direct {v0, p0}, Lcom/gyf/immersionbar/do;-><init>(Landroid/app/Activity;)V

    .line 2
    invoke-virtual {v0}, Lcom/gyf/immersionbar/do;->do()I

    move-result p0

    return p0
.end method

.method public static varargs q1(Landroidx/fragment/app/Fragment;[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/else;->m1(Landroid/app/Activity;[Landroid/view/View;)V

    return-void
.end method

.method public static q2(Landroidx/fragment/app/Fragment;)Lcom/gyf/immersionbar/else;
    .locals 2
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/gyf/immersionbar/else;->K()Lcom/gyf/immersionbar/catch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/gyf/immersionbar/catch;->else(Landroidx/fragment/app/Fragment;Z)Lcom/gyf/immersionbar/else;

    move-result-object p0

    return-object p0
.end method

.method public static r(Landroid/app/Fragment;)I
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/else;->q(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static varargs r1(Landroid/app/Activity;I[Landroid/view/View;)V
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_6

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 2
    :cond_1
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    aget-object v2, p2, v1

    if-nez v2, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    sget v3, Lcom/gyf/immersionbar/R$id;->immersion_fits_layout_overlap:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_3

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 5
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, p1, :cond_5

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_4

    .line 8
    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 9
    :cond_4
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 10
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, p1

    .line 11
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v6, v4

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 12
    invoke-virtual {v3, v5, v6, v4, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 13
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public static r2(Landroidx/fragment/app/Fragment;Z)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/gyf/immersionbar/else;->K()Lcom/gyf/immersionbar/catch;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/gyf/immersionbar/catch;->else(Landroidx/fragment/app/Fragment;Z)Lcom/gyf/immersionbar/else;

    move-result-object p0

    return-object p0
.end method

.method public static s(Landroidx/fragment/app/Fragment;)I
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/else;->q(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static varargs s1(Landroid/app/Activity;[Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/gyf/immersionbar/else;->L(Landroid/app/Activity;)I

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/gyf/immersionbar/else;->r1(Landroid/app/Activity;I[Landroid/view/View;)V

    return-void
.end method

.method public static strictfp(Landroid/view/View;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 2
    :cond_1
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 3
    check-cast p0, Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 5
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6
    instance-of v5, v4, Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v5, :cond_2

    .line 7
    invoke-static {v4}, Lcom/gyf/immersionbar/else;->strictfp(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v2

    .line 8
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v4

    if-eqz v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public static varargs t1(Landroid/app/Fragment;I[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/gyf/immersionbar/else;->r1(Landroid/app/Activity;I[Landroid/view/View;)V

    return-void
.end method

.method private this()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-boolean v1, v0, Lcom/gyf/immersionbar/for;->const:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v4, -0x454546

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/gyf/immersionbar/for;->do:I

    if-eqz v1, :cond_1

    if-le v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v0, v0, Lcom/gyf/immersionbar/for;->super:F

    invoke-virtual {p0, v1, v0}, Lcom/gyf/immersionbar/else;->P1(ZF)Lcom/gyf/immersionbar/else;

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-boolean v1, v0, Lcom/gyf/immersionbar/for;->final:Z

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/gyf/immersionbar/for;->if:I

    if-eqz v1, :cond_3

    if-le v1, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 4
    :goto_1
    iget v0, v0, Lcom/gyf/immersionbar/for;->throw:F

    invoke-virtual {p0, v2, v0}, Lcom/gyf/immersionbar/else;->F0(ZF)Lcom/gyf/immersionbar/else;

    :cond_3
    return-void
.end method

.method public static transient(Landroidx/fragment/app/Fragment;Z)V
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/gyf/immersionbar/else;->K()Lcom/gyf/immersionbar/catch;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/gyf/immersionbar/catch;->for(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method public static varargs u1(Landroid/app/Fragment;[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/else;->s1(Landroid/app/Activity;[Landroid/view/View;)V

    return-void
.end method

.method public static varargs v1(Landroidx/fragment/app/Fragment;I[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/gyf/immersionbar/else;->r1(Landroid/app/Activity;I[Landroid/view/View;)V

    return-void
.end method

.method private volatile()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->goto:Lcom/gyf/immersionbar/else;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    invoke-static {v0}, Lcom/gyf/immersionbar/else;->k2(Landroid/app/Activity;)Lcom/gyf/immersionbar/else;

    move-result-object v0

    iput-object v0, p0, Lcom/gyf/immersionbar/else;->goto:Lcom/gyf/immersionbar/else;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->goto:Lcom/gyf/immersionbar/else;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/gyf/immersionbar/else;->return:Z

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/gyf/immersionbar/else;->b0()V

    :cond_1
    return-void
.end method

.method public static varargs w1(Landroidx/fragment/app/Fragment;[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/else;->s1(Landroid/app/Activity;[Landroid/view/View;)V

    return-void
.end method

.method public static x(Landroid/app/Activity;)I
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    new-instance v0, Lcom/gyf/immersionbar/do;

    invoke-direct {v0, p0}, Lcom/gyf/immersionbar/do;-><init>(Landroid/app/Activity;)V

    .line 2
    invoke-virtual {v0}, Lcom/gyf/immersionbar/do;->new()I

    move-result p0

    return p0
.end method

.method private x1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->case:Landroid/view/ViewGroup;

    sget v1, Lcom/gyf/immersionbar/new;->if:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/view/View;

    iget-object v2, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 4
    iget-object v1, p0, Lcom/gyf/immersionbar/else;->case:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/gyf/immersionbar/else;->final:Lcom/gyf/immersionbar/do;

    invoke-virtual {v1}, Lcom/gyf/immersionbar/do;->class()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/gyf/immersionbar/else;->final:Lcom/gyf/immersionbar/do;

    invoke-virtual {v3}, Lcom/gyf/immersionbar/do;->new()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x50

    .line 7
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 8
    :cond_1
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/gyf/immersionbar/else;->final:Lcom/gyf/immersionbar/do;

    invoke-virtual {v3}, Lcom/gyf/immersionbar/do;->case()I

    move-result v3

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v2, 0x800005

    .line 9
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 10
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object v1, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget v2, v1, Lcom/gyf/immersionbar/for;->if:I

    iget v3, v1, Lcom/gyf/immersionbar/for;->native:I

    iget v1, v1, Lcom/gyf/immersionbar/for;->case:F

    invoke-static {v2, v3, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 12
    iget-object v1, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-boolean v2, v1, Lcom/gyf/immersionbar/for;->interface:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Lcom/gyf/immersionbar/for;->protected:Z

    if-eqz v2, :cond_2

    iget-boolean v1, v1, Lcom/gyf/immersionbar/for;->this:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public static y(Landroid/app/Fragment;)I
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/else;->x(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method private y1()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->case:Landroid/view/ViewGroup;

    sget v1, Lcom/gyf/immersionbar/new;->do:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/view/View;

    iget-object v3, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/gyf/immersionbar/else;->final:Lcom/gyf/immersionbar/do;

    .line 4
    invoke-virtual {v5}, Lcom/gyf/immersionbar/do;->this()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x30

    .line 5
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 6
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 9
    iget-object v1, p0, Lcom/gyf/immersionbar/else;->case:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-boolean v3, v1, Lcom/gyf/immersionbar/for;->while:Z

    if-eqz v3, :cond_1

    .line 11
    iget v2, v1, Lcom/gyf/immersionbar/for;->do:I

    iget v3, v1, Lcom/gyf/immersionbar/for;->import:I

    iget v1, v1, Lcom/gyf/immersionbar/for;->new:F

    invoke-static {v2, v3, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 12
    :cond_1
    iget v3, v1, Lcom/gyf/immersionbar/for;->do:I

    iget v1, v1, Lcom/gyf/immersionbar/for;->new:F

    invoke-static {v3, v2, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public static z(Landroidx/fragment/app/Fragment;)I
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/else;->x(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static z1(Landroid/view/Window;)V
    .locals 1
    .param p0    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x400

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method


# virtual methods
.method public A0(IIF)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p3    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput p1, v0, Lcom/gyf/immersionbar/for;->if:I

    .line 2
    iput p2, v0, Lcom/gyf/immersionbar/for;->native:I

    .line 3
    iput p3, v0, Lcom/gyf/immersionbar/for;->case:F

    return-object p0
.end method

.method public A1(F)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput p1, v0, Lcom/gyf/immersionbar/for;->new:F

    .line 2
    iput p1, v0, Lcom/gyf/immersionbar/for;->try:F

    return-object p0
.end method

.method public B0(I)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/else;->D0(I)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public B1(I)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/else;->H1(I)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public C0(Ljava/lang/String;)Lcom/gyf/immersionbar/else;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/else;->D0(I)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public C1(IF)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/else;->I1(IF)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public D0(I)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput p1, v0, Lcom/gyf/immersionbar/for;->native:I

    return-object p0
.end method

.method public D1(IIF)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .param p3    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iget-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    .line 2
    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/gyf/immersionbar/else;->J1(IIF)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public E0(Z)Lcom/gyf/immersionbar/else;
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/gyf/immersionbar/else;->F0(ZF)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public E1(Ljava/lang/String;)Lcom/gyf/immersionbar/else;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/else;->H1(I)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public F0(ZF)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/for;->class:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/gyf/immersionbar/else;->m0()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput p2, p1, Lcom/gyf/immersionbar/for;->case:F

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget p2, p1, Lcom/gyf/immersionbar/for;->else:F

    iput p2, p1, Lcom/gyf/immersionbar/for;->case:F

    :goto_0
    return-object p0
.end method

.method public F1(Ljava/lang/String;F)Lcom/gyf/immersionbar/else;
    .locals 0
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/else;->I1(IF)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public G()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gyf/immersionbar/else;->finally:I

    return v0
.end method

.method public G0(Z)Lcom/gyf/immersionbar/else;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/for;->interface:Z

    return-object p0
.end method

.method public G1(Ljava/lang/String;Ljava/lang/String;F)Lcom/gyf/immersionbar/else;
    .locals 0
    .param p3    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 2
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/gyf/immersionbar/else;->J1(IIF)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public H()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gyf/immersionbar/else;->throws:I

    return v0
.end method

.method public H0(Z)Lcom/gyf/immersionbar/else;
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v4/n51;->this()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/for;->transient:Z

    .line 3
    iput-boolean p1, v0, Lcom/gyf/immersionbar/for;->protected:Z

    :cond_0
    return-object p0
.end method

.method public H1(I)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput p1, v0, Lcom/gyf/immersionbar/for;->do:I

    return-object p0
.end method

.method public I()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gyf/immersionbar/else;->extends:I

    return v0
.end method

.method public I0(Z)Lcom/gyf/immersionbar/else;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/for;->protected:Z

    return-object p0
.end method

.method public I1(IF)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput p1, v0, Lcom/gyf/immersionbar/for;->do:I

    .line 2
    iput p2, v0, Lcom/gyf/immersionbar/for;->new:F

    return-object p0
.end method

.method public J()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gyf/immersionbar/else;->default:I

    return v0
.end method

.method public J0(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v4/n51;->this()Z

    move-result p1

    if-nez p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/gyf/immersionbar/else;->g()V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/gyf/immersionbar/else;->return:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/gyf/immersionbar/else;->break:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-boolean p1, p1, Lcom/gyf/immersionbar/for;->protected:Z

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/gyf/immersionbar/else;->b0()V

    goto :goto_1

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/gyf/immersionbar/else;->g()V

    :goto_1
    return-void
.end method

.method public J1(IIF)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p3    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput p1, v0, Lcom/gyf/immersionbar/for;->do:I

    .line 2
    iput p2, v0, Lcom/gyf/immersionbar/for;->import:I

    .line 3
    iput p3, v0, Lcom/gyf/immersionbar/for;->new:F

    return-object p0
.end method

.method public K0()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/gyf/immersionbar/else;->continue()V

    .line 2
    iget-boolean v0, p0, Lcom/gyf/immersionbar/else;->class:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gyf/immersionbar/else;->goto:Lcom/gyf/immersionbar/else;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, v0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-boolean v2, v0, Lcom/gyf/immersionbar/else;->switch:Z

    iput-boolean v2, v1, Lcom/gyf/immersionbar/for;->strictfp:Z

    .line 4
    iget-object v1, v1, Lcom/gyf/immersionbar/for;->break:Lcom/gyf/immersionbar/if;

    sget-object v2, Lcom/gyf/immersionbar/if;->FLAG_SHOW_BAR:Lcom/gyf/immersionbar/if;

    if-eq v1, v2, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/gyf/immersionbar/else;->Q0()V

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->return:Z

    return-void
.end method

.method public K1(I)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/else;->N1(I)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public L0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/gyf/immersionbar/else;->break:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/gyf/immersionbar/else;->return:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Landroid/support/v4/n51;->this()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-boolean v0, v0, Lcom/gyf/immersionbar/for;->transient:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/gyf/immersionbar/else;->b0()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-object v0, v0, Lcom/gyf/immersionbar/for;->break:Lcom/gyf/immersionbar/if;

    sget-object v1, Lcom/gyf/immersionbar/if;->FLAG_SHOW_BAR:Lcom/gyf/immersionbar/if;

    if-eq v0, v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/gyf/immersionbar/else;->Q0()V

    :cond_1
    :goto_0
    return-void
.end method

.method public L1(Ljava/lang/String;)Lcom/gyf/immersionbar/else;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/else;->N1(I)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public M1(Z)Lcom/gyf/immersionbar/else;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/for;->while:Z

    return-object p0
.end method

.method public N0()Lcom/gyf/immersionbar/else;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-object v0, v0, Lcom/gyf/immersionbar/for;->public:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-object v0, v0, Lcom/gyf/immersionbar/for;->public:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-object p0
.end method

.method public N1(I)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput p1, v0, Lcom/gyf/immersionbar/for;->import:I

    return-object p0
.end method

.method public O()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->if:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public O0(Landroid/view/View;)Lcom/gyf/immersionbar/else;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-object v0, v0, Lcom/gyf/immersionbar/for;->public:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-object v0, v0, Lcom/gyf/immersionbar/for;->public:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "View\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public O1(Z)Lcom/gyf/immersionbar/else;
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/gyf/immersionbar/else;->P1(ZF)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public P(Ljava/lang/String;)Lcom/gyf/immersionbar/else;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/gyf/immersionbar/else;->h0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->native:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gyf/immersionbar/for;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/gyf/immersionbar/for;->do()Lcom/gyf/immersionbar/for;

    move-result-object p1

    iput-object p1, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    :cond_0
    return-object p0

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "tag\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public P0()Lcom/gyf/immersionbar/else;
    .locals 1

    .line 1
    new-instance v0, Lcom/gyf/immersionbar/for;

    invoke-direct {v0}, Lcom/gyf/immersionbar/for;-><init>()V

    iput-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/gyf/immersionbar/else;->public:I

    return-object p0
.end method

.method public P1(ZF)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/for;->catch:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/gyf/immersionbar/else;->n0()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput p2, p1, Lcom/gyf/immersionbar/for;->new:F

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget p2, p1, Lcom/gyf/immersionbar/for;->abstract:I

    iput p2, p1, Lcom/gyf/immersionbar/for;->private:I

    .line 5
    iget p2, p1, Lcom/gyf/immersionbar/for;->try:F

    iput p2, p1, Lcom/gyf/immersionbar/for;->new:F

    :goto_0
    return-object p0
.end method

.method public Q()Landroid/view/Window;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->try:Landroid/view/Window;

    return-object v0
.end method

.method public Q0()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x100

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    invoke-static {}, Landroid/support/v4/n51;->this()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/gyf/immersionbar/else;->a()V

    .line 3
    invoke-direct {p0, v1}, Lcom/gyf/immersionbar/else;->c0(I)I

    move-result v0

    .line 4
    invoke-direct {p0, v0}, Lcom/gyf/immersionbar/else;->e1(I)I

    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lcom/gyf/immersionbar/else;->Y0(I)I

    move-result v1

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/gyf/immersionbar/else;->d0()V

    .line 7
    :goto_0
    invoke-direct {p0, v1}, Lcom/gyf/immersionbar/else;->Y(I)I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/gyf/immersionbar/else;->case:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 9
    invoke-direct {p0}, Lcom/gyf/immersionbar/else;->d1()V

    .line 10
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-object v0, v0, Lcom/gyf/immersionbar/for;->synchronized:Lcom/gyf/immersionbar/OnNavigationBarListener;

    if-eqz v0, :cond_1

    .line 11
    invoke-static {}, Lcom/gyf/immersionbar/this;->do()Lcom/gyf/immersionbar/this;

    move-result-object v0

    iget-object v1, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/this;->if(Landroid/app/Application;)V

    :cond_1
    return-void
.end method

.method public Q1(I)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/else;->S1(Landroid/view/View;)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public R1(ILandroid/view/View;)Lcom/gyf/immersionbar/else;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/else;->S1(Landroid/view/View;)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public S1(Landroid/view/View;)Lcom/gyf/immersionbar/else;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput-object p1, v0, Lcom/gyf/immersionbar/for;->finally:Landroid/view/View;

    .line 2
    iget p1, p0, Lcom/gyf/immersionbar/else;->public:I

    if-nez p1, :cond_1

    const/4 p1, 0x3

    .line 3
    iput p1, p0, Lcom/gyf/immersionbar/else;->public:I

    :cond_1
    return-object p0
.end method

.method public T1(Z)Lcom/gyf/immersionbar/else;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/for;->continue:Z

    return-object p0
.end method

.method public U1(I)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/gyf/immersionbar/else;->X1(IZ)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public V1(ILandroid/view/View;)Lcom/gyf/immersionbar/else;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/else;->Z1(Landroid/view/View;Z)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public W1(ILandroid/view/View;Z)Lcom/gyf/immersionbar/else;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/gyf/immersionbar/else;->Z1(Landroid/view/View;Z)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public X1(IZ)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->if:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->if:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/else;->Z1(Landroid/view/View;Z)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->for:Landroid/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->for:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/else;->Z1(Landroid/view/View;Z)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/else;->Z1(Landroid/view/View;Z)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public Y1(Landroid/view/View;)Lcom/gyf/immersionbar/else;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/gyf/immersionbar/else;->Z1(Landroid/view/View;Z)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public Z(Lcom/gyf/immersionbar/if;)Lcom/gyf/immersionbar/else;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput-object p1, v0, Lcom/gyf/immersionbar/for;->break:Lcom/gyf/immersionbar/if;

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    invoke-static {}, Landroid/support/v4/n51;->this()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-object v0, p1, Lcom/gyf/immersionbar/for;->break:Lcom/gyf/immersionbar/if;

    sget-object v1, Lcom/gyf/immersionbar/if;->FLAG_HIDE_NAVIGATION_BAR:Lcom/gyf/immersionbar/if;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/gyf/immersionbar/if;->FLAG_HIDE_BAR:Lcom/gyf/immersionbar/if;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p1, Lcom/gyf/immersionbar/for;->this:Z

    :cond_3
    return-object p0
.end method

.method public Z0(Lcom/gyf/immersionbar/OnBarListener;)Lcom/gyf/immersionbar/else;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-object v1, v0, Lcom/gyf/immersionbar/for;->a:Lcom/gyf/immersionbar/OnBarListener;

    if-nez v1, :cond_1

    .line 2
    iput-object p1, v0, Lcom/gyf/immersionbar/for;->a:Lcom/gyf/immersionbar/OnBarListener;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-object v0, p1, Lcom/gyf/immersionbar/for;->a:Lcom/gyf/immersionbar/OnBarListener;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lcom/gyf/immersionbar/for;->a:Lcom/gyf/immersionbar/OnBarListener;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public Z1(Landroid/view/View;Z)Lcom/gyf/immersionbar/else;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget v0, p0, Lcom/gyf/immersionbar/else;->public:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/gyf/immersionbar/else;->public:I

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput-object p1, v0, Lcom/gyf/immersionbar/for;->extends:Landroid/view/View;

    .line 4
    iput-boolean p2, v0, Lcom/gyf/immersionbar/for;->while:Z

    return-object p0
.end method

.method public a1(Lcom/gyf/immersionbar/OnKeyboardListener;)Lcom/gyf/immersionbar/else;
    .locals 2
    .param p1    # Lcom/gyf/immersionbar/OnKeyboardListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-object v1, v0, Lcom/gyf/immersionbar/for;->instanceof:Lcom/gyf/immersionbar/OnKeyboardListener;

    if-nez v1, :cond_0

    .line 2
    iput-object p1, v0, Lcom/gyf/immersionbar/for;->instanceof:Lcom/gyf/immersionbar/OnKeyboardListener;

    :cond_0
    return-object p0
.end method

.method public a2(I)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->if:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->if:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/else;->c2(Landroid/view/View;)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->for:Landroid/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->for:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/else;->c2(Landroid/view/View;)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/else;->c2(Landroid/view/View;)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public abstract(Z)Lcom/gyf/immersionbar/else;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/for;->implements:Z

    return-object p0
.end method

.method public b(Z)Lcom/gyf/immersionbar/else;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/for;->default:Z

    if-eqz p1, :cond_0

    .line 2
    iget p1, p0, Lcom/gyf/immersionbar/else;->public:I

    if-nez p1, :cond_1

    const/4 p1, 0x4

    .line 3
    iput p1, p0, Lcom/gyf/immersionbar/else;->public:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/gyf/immersionbar/else;->public:I

    :cond_1
    :goto_0
    return-object p0
.end method

.method public b0()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-boolean v0, v0, Lcom/gyf/immersionbar/for;->implements:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/gyf/immersionbar/else;->i2()V

    .line 3
    invoke-virtual {p0}, Lcom/gyf/immersionbar/else;->Q0()V

    .line 4
    invoke-direct {p0}, Lcom/gyf/immersionbar/else;->g()V

    .line 5
    invoke-direct {p0}, Lcom/gyf/immersionbar/else;->implements()V

    .line 6
    invoke-direct {p0}, Lcom/gyf/immersionbar/else;->d2()V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/gyf/immersionbar/else;->return:Z

    :cond_0
    return-void
.end method

.method public b1(Lcom/gyf/immersionbar/OnNavigationBarListener;)Lcom/gyf/immersionbar/else;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-object v1, v0, Lcom/gyf/immersionbar/for;->synchronized:Lcom/gyf/immersionbar/OnNavigationBarListener;

    if-nez v1, :cond_1

    .line 2
    iput-object p1, v0, Lcom/gyf/immersionbar/for;->synchronized:Lcom/gyf/immersionbar/OnNavigationBarListener;

    .line 3
    invoke-static {}, Lcom/gyf/immersionbar/this;->do()Lcom/gyf/immersionbar/this;

    move-result-object p1

    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-object v0, v0, Lcom/gyf/immersionbar/for;->synchronized:Lcom/gyf/immersionbar/OnNavigationBarListener;

    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/this;->addOnNavigationBarListener(Lcom/gyf/immersionbar/OnNavigationBarListener;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-object p1, p1, Lcom/gyf/immersionbar/for;->synchronized:Lcom/gyf/immersionbar/OnNavigationBarListener;

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Lcom/gyf/immersionbar/this;->do()Lcom/gyf/immersionbar/this;

    move-result-object p1

    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-object v0, v0, Lcom/gyf/immersionbar/for;->synchronized:Lcom/gyf/immersionbar/OnNavigationBarListener;

    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/this;->removeOnNavigationBarListener(Lcom/gyf/immersionbar/OnNavigationBarListener;)V

    .line 6
    iget-object p1, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/gyf/immersionbar/for;->synchronized:Lcom/gyf/immersionbar/OnNavigationBarListener;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public b2(ILandroid/view/View;)Lcom/gyf/immersionbar/else;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/else;->c2(Landroid/view/View;)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public break(Z)Lcom/gyf/immersionbar/else;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    xor-int/lit8 v1, p1, 0x1

    iput-boolean v1, v0, Lcom/gyf/immersionbar/for;->package:Z

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/gyf/immersionbar/else;->S0(Landroid/app/Activity;Z)V

    return-object p0
.end method

.method public c(ZI)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/else;->e(ZI)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public c2(Landroid/view/View;)Lcom/gyf/immersionbar/else;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget v0, p0, Lcom/gyf/immersionbar/else;->public:I

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/gyf/immersionbar/else;->public:I

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput-object p1, v0, Lcom/gyf/immersionbar/for;->extends:Landroid/view/View;

    return-object p0
.end method

.method public case(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Lcom/gyf/immersionbar/else;
    .locals 0

    .line 1
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 2
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/gyf/immersionbar/else;->goto(Landroid/view/View;II)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public catch(Z)Lcom/gyf/immersionbar/else;
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/gyf/immersionbar/else;->class(ZF)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public class(ZF)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/for;->const:Z

    .line 2
    iput p2, v0, Lcom/gyf/immersionbar/for;->super:F

    .line 3
    iput-boolean p1, v0, Lcom/gyf/immersionbar/for;->final:Z

    .line 4
    iput p2, v0, Lcom/gyf/immersionbar/for;->throw:F

    return-object p0
.end method

.method public const(Z)Lcom/gyf/immersionbar/else;
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/gyf/immersionbar/else;->final(ZF)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public d(ZIIF)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .param p4    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iget-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    .line 2
    invoke-static {v0, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/gyf/immersionbar/else;->f(ZIIF)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public default(IF)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput p1, v0, Lcom/gyf/immersionbar/for;->do:I

    .line 2
    iput p1, v0, Lcom/gyf/immersionbar/for;->if:I

    .line 3
    iput p2, v0, Lcom/gyf/immersionbar/for;->new:F

    .line 4
    iput p2, v0, Lcom/gyf/immersionbar/for;->case:F

    return-object p0
.end method

.method public do(Ljava/lang/String;)Lcom/gyf/immersionbar/else;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/gyf/immersionbar/else;->h0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/for;->do()Lcom/gyf/immersionbar/for;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/gyf/immersionbar/else;->native:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "tag\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(ZI)Lcom/gyf/immersionbar/else;
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    const/high16 v0, -0x1000000

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/gyf/immersionbar/else;->f(ZIIF)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public e2()Lcom/gyf/immersionbar/else;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    const/4 v1, 0x0

    iput v1, v0, Lcom/gyf/immersionbar/for;->do:I

    .line 2
    iput v1, v0, Lcom/gyf/immersionbar/for;->if:I

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/gyf/immersionbar/for;->goto:Z

    return-object p0
.end method

.method public else(Landroid/view/View;I)Lcom/gyf/immersionbar/else;
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget v1, v1, Lcom/gyf/immersionbar/for;->do:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p2, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-object p2, p2, Lcom/gyf/immersionbar/for;->public:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "View\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public extends(IIF)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p3    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput p1, v0, Lcom/gyf/immersionbar/for;->do:I

    .line 2
    iput p1, v0, Lcom/gyf/immersionbar/for;->if:I

    .line 3
    iput p2, v0, Lcom/gyf/immersionbar/for;->import:I

    .line 4
    iput p2, v0, Lcom/gyf/immersionbar/for;->native:I

    .line 5
    iput p3, v0, Lcom/gyf/immersionbar/for;->new:F

    .line 6
    iput p3, v0, Lcom/gyf/immersionbar/for;->case:F

    return-object p0
.end method

.method public f(ZIIF)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p4    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/for;->default:Z

    .line 2
    iput p2, v0, Lcom/gyf/immersionbar/for;->static:I

    .line 3
    iput p3, v0, Lcom/gyf/immersionbar/for;->switch:I

    .line 4
    iput p4, v0, Lcom/gyf/immersionbar/for;->throws:F

    if-eqz p1, :cond_0

    .line 5
    iget p1, p0, Lcom/gyf/immersionbar/else;->public:I

    if-nez p1, :cond_1

    const/4 p1, 0x4

    .line 6
    iput p1, p0, Lcom/gyf/immersionbar/else;->public:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/gyf/immersionbar/else;->public:I

    .line 8
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/gyf/immersionbar/else;->else:Landroid/view/ViewGroup;

    invoke-static {p2, p3, p4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-object p0
.end method

.method public f0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gyf/immersionbar/else;->return:Z

    return v0
.end method

.method public f2()Lcom/gyf/immersionbar/else;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    const/4 v1, 0x0

    iput v1, v0, Lcom/gyf/immersionbar/for;->if:I

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/gyf/immersionbar/for;->goto:Z

    return-object p0
.end method

.method public final(ZF)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/for;->final:Z

    .line 2
    iput p2, v0, Lcom/gyf/immersionbar/for;->throw:F

    return-object p0
.end method

.method public finally(I)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/else;->private(I)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public for(Landroid/view/View;I)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/else;->else(Landroid/view/View;I)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public g0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gyf/immersionbar/else;->catch:Z

    return v0
.end method

.method public g2()Lcom/gyf/immersionbar/else;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    const/4 v1, 0x0

    iput v1, v0, Lcom/gyf/immersionbar/for;->do:I

    return-object p0
.end method

.method public goto(Landroid/view/View;II)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p2, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-object p2, p2, Lcom/gyf/immersionbar/for;->public:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "View\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gyf/immersionbar/else;->break:Z

    return v0
.end method

.method public if(Landroid/view/View;)Lcom/gyf/immersionbar/else;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget v0, v0, Lcom/gyf/immersionbar/for;->import:I

    invoke-virtual {p0, p1, v0}, Lcom/gyf/immersionbar/else;->else(Landroid/view/View;I)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public import(I)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/else;->throws(I)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public j2(F)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput p1, v0, Lcom/gyf/immersionbar/for;->return:F

    return-object p0
.end method

.method public l(I)Lcom/gyf/immersionbar/else;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-object v1, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, v0, Lcom/gyf/immersionbar/for;->private:I

    .line 2
    iget-object p1, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget v0, p1, Lcom/gyf/immersionbar/for;->private:I

    iput v0, p1, Lcom/gyf/immersionbar/for;->abstract:I

    return-object p0
.end method

.method public m(Ljava/lang/String;)Lcom/gyf/immersionbar/else;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/gyf/immersionbar/for;->private:I

    .line 2
    iget-object p1, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget v0, p1, Lcom/gyf/immersionbar/for;->private:I

    iput v0, p1, Lcom/gyf/immersionbar/for;->abstract:I

    return-object p0
.end method

.method public n(I)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput p1, v0, Lcom/gyf/immersionbar/for;->private:I

    .line 2
    iput p1, v0, Lcom/gyf/immersionbar/for;->abstract:I

    return-object p0
.end method

.method public native(IF)Lcom/gyf/immersionbar/else;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    invoke-static {p2, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    int-to-float p1, p1

    invoke-virtual {p0, p2, p1}, Lcom/gyf/immersionbar/else;->default(IF)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public new(Landroid/view/View;II)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    .line 2
    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iget-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    .line 3
    invoke-static {v0, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/gyf/immersionbar/else;->goto(Landroid/view/View;II)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public o(Z)Lcom/gyf/immersionbar/else;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/for;->goto:Z

    return-object p0
.end method

.method public o0(Z)Lcom/gyf/immersionbar/else;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget v0, v0, Lcom/gyf/immersionbar/for;->volatile:I

    invoke-virtual {p0, p1, v0}, Lcom/gyf/immersionbar/else;->p0(ZI)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public onNavigationBarChange(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->case:Landroid/view/ViewGroup;

    sget v1, Lcom/gyf/immersionbar/new;->if:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2
    new-instance v1, Lcom/gyf/immersionbar/do;

    iget-object v2, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/gyf/immersionbar/do;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/gyf/immersionbar/else;->final:Lcom/gyf/immersionbar/do;

    .line 3
    iget-object v1, p0, Lcom/gyf/immersionbar/else;->else:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    iget-object v2, p0, Lcom/gyf/immersionbar/else;->else:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_4

    .line 5
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/gyf/immersionbar/else;->case:Landroid/view/ViewGroup;

    const v4, 0x1020002

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/gyf/immersionbar/else;->strictfp(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget p1, p0, Lcom/gyf/immersionbar/else;->super:I

    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/gyf/immersionbar/else;->final:Lcom/gyf/immersionbar/do;

    invoke-virtual {p1}, Lcom/gyf/immersionbar/do;->new()I

    move-result p1

    iput p1, p0, Lcom/gyf/immersionbar/else;->super:I

    .line 9
    :cond_2
    iget p1, p0, Lcom/gyf/immersionbar/else;->throw:I

    if-nez p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/gyf/immersionbar/else;->final:Lcom/gyf/immersionbar/do;

    invoke-virtual {p1}, Lcom/gyf/immersionbar/do;->case()I

    move-result p1

    iput p1, p0, Lcom/gyf/immersionbar/else;->throw:I

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-boolean p1, p1, Lcom/gyf/immersionbar/for;->this:Z

    if-nez p1, :cond_7

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 13
    iget-object v1, p0, Lcom/gyf/immersionbar/else;->final:Lcom/gyf/immersionbar/do;

    invoke-virtual {v1}, Lcom/gyf/immersionbar/do;->class()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x50

    .line 14
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 15
    iget v1, p0, Lcom/gyf/immersionbar/else;->super:I

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 16
    iget-object v2, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-boolean v2, v2, Lcom/gyf/immersionbar/for;->goto:Z

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    const v1, 0x800005

    .line 17
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 18
    iget v1, p0, Lcom/gyf/immersionbar/else;->throw:I

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 19
    iget-object v2, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iget-boolean v2, v2, Lcom/gyf/immersionbar/for;->goto:Z

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    move v2, v1

    const/4 v1, 0x0

    .line 20
    :goto_3
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/gyf/immersionbar/else;->else:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    invoke-direct {p0, v3, p1, v2, v1}, Lcom/gyf/immersionbar/else;->c1(IIII)V

    :cond_8
    return-void
.end method

.method public p()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gyf/immersionbar/else;->while:I

    return v0
.end method

.method public p0(ZI)Lcom/gyf/immersionbar/else;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/for;->strictfp:Z

    .line 2
    iput p2, v0, Lcom/gyf/immersionbar/for;->volatile:I

    .line 3
    iput-boolean p1, p0, Lcom/gyf/immersionbar/else;->switch:Z

    return-object p0
.end method

.method public package(Ljava/lang/String;)Lcom/gyf/immersionbar/else;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/else;->private(I)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public private(I)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput p1, v0, Lcom/gyf/immersionbar/for;->import:I

    .line 2
    iput p1, v0, Lcom/gyf/immersionbar/for;->native:I

    return-object p0
.end method

.method public public(IIF)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .param p3    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iget-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    .line 2
    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/gyf/immersionbar/else;->extends(IIF)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public q0(I)Lcom/gyf/immersionbar/else;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput p1, v0, Lcom/gyf/immersionbar/for;->volatile:I

    return-object p0
.end method

.method public r0(F)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput p1, v0, Lcom/gyf/immersionbar/for;->case:F

    .line 2
    iput p1, v0, Lcom/gyf/immersionbar/for;->else:F

    return-object p0
.end method

.method public return(Ljava/lang/String;)Lcom/gyf/immersionbar/else;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/else;->throws(I)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gyf/immersionbar/else;->M0()V

    return-void
.end method

.method public s0(I)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/else;->y0(I)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public static(Ljava/lang/String;F)Lcom/gyf/immersionbar/else;
    .locals 0
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/else;->default(IF)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public super(Z)Lcom/gyf/immersionbar/else;
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/gyf/immersionbar/else;->throw(ZF)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public switch(Ljava/lang/String;Ljava/lang/String;F)Lcom/gyf/immersionbar/else;
    .locals 0
    .param p3    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/gyf/immersionbar/else;->extends(IIF)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public synchronized(Z)Lcom/gyf/immersionbar/else;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/for;->package:Z

    return-object p0
.end method

.method public t()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    return-object v0
.end method

.method public t0(IF)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/else;->z0(IF)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public throw(ZF)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/for;->const:Z

    .line 2
    iput p2, v0, Lcom/gyf/immersionbar/for;->super:F

    return-object p0
.end method

.method public throws(I)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput p1, v0, Lcom/gyf/immersionbar/for;->do:I

    .line 2
    iput p1, v0, Lcom/gyf/immersionbar/for;->if:I

    return-object p0
.end method

.method public try(Landroid/view/View;Ljava/lang/String;)Lcom/gyf/immersionbar/else;
    .locals 0

    .line 1
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/else;->else(Landroid/view/View;I)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public u()Lcom/gyf/immersionbar/do;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->final:Lcom/gyf/immersionbar/do;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/gyf/immersionbar/do;

    iget-object v1, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/gyf/immersionbar/do;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/gyf/immersionbar/else;->final:Lcom/gyf/immersionbar/do;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->final:Lcom/gyf/immersionbar/do;

    return-object v0
.end method

.method public u0(IIF)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .param p3    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iget-object v0, p0, Lcom/gyf/immersionbar/else;->do:Landroid/app/Activity;

    .line 2
    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/gyf/immersionbar/else;->A0(IIF)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public v()Lcom/gyf/immersionbar/for;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    return-object v0
.end method

.method public v0(Ljava/lang/String;)Lcom/gyf/immersionbar/else;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/else;->y0(I)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public w()Landroid/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->for:Landroid/app/Fragment;

    return-object v0
.end method

.method public w0(Ljava/lang/String;F)Lcom/gyf/immersionbar/else;
    .locals 0
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/else;->z0(IF)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public while(F)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput p1, v0, Lcom/gyf/immersionbar/for;->new:F

    .line 2
    iput p1, v0, Lcom/gyf/immersionbar/for;->try:F

    .line 3
    iput p1, v0, Lcom/gyf/immersionbar/for;->case:F

    .line 4
    iput p1, v0, Lcom/gyf/immersionbar/for;->else:F

    return-object p0
.end method

.method public x0(Ljava/lang/String;Ljava/lang/String;F)Lcom/gyf/immersionbar/else;
    .locals 0
    .param p3    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 2
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/gyf/immersionbar/else;->A0(IIF)Lcom/gyf/immersionbar/else;

    move-result-object p1

    return-object p1
.end method

.method public y0(I)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput p1, v0, Lcom/gyf/immersionbar/for;->if:I

    return-object p0
.end method

.method public z0(IF)Lcom/gyf/immersionbar/else;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/else;->const:Lcom/gyf/immersionbar/for;

    iput p1, v0, Lcom/gyf/immersionbar/for;->if:I

    .line 2
    iput p2, v0, Lcom/gyf/immersionbar/for;->case:F

    return-object p0
.end method
